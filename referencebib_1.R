library(openxlsx)
library(bibtex)
library(RefManageR)
library(rcrossref)
library(purrr)
library(dplyr)

reload.all <- T

path <- "C:/Users/supernova/Dropbox/My PC (supernova-pc)/Desktop/NeoNet/"
fich <- "14C_DATES_v3_France_7.xlsx"
bibrefs <- paste0(getwd(),"/neonet/references_france.bib")
if(reload.all){
  bib <- read.bib(bibrefs)
  df <- openxlsx::read.xlsx(paste0(path, fich), skipEmptyRows=TRUE)
  # a shorter df for uniques references
  uniq.refs <- unique(df[c("bib", "bib_url")])
  # uniq.bib <- as.data.frame(unique(df$bib))
  names(uniq.refs) <- c("short.ref","key.or.doi")
  # # sample - - - - - - - -
  # uniq.refs <- uniq.refs[grepl("^10\\.", uniq.refs[, "ref"]), "ref"]
  # uniq.refs <- as.data.frame(uniq.refs)
  # names(uniq.refs)[1] <- "ref"
  # - - - - - - - - - - - -
  uniq.refs$long.ref <- uniq.refs$key.or.doi # by default
  for(i in 1:nrow(uniq.refs)){
    # i <- 31
    flag <- 0
    a.ref <- uniq.refs[i,"key.or.doi"]
    print(a.ref)
    # bibtex - - - - - - - - - - - - - - - - - -
    if(grepl("^[[:upper:]]", a.ref)){
      a.bibref <- capture.output(print(bib[c(a.ref)]))
      a.citation <- paste0(a.bibref, collapse = " ")
      uniq.refs[i, "long.ref"] <- a.citation
      flag <- 1
    }
    # dois (all start with '10.') - - - - - - - -
    # a.ref <- "10.1016/j.quaint.2017.05.027"
    if(grepl("^10\\.", a.ref)){
      tryCatch(
        expr = {
          # uniq.refs[i, "reference"] <- GetBibEntryWithDOI(a.ref)
          uniq.refs[i, "long.ref"] <- cr_cn(a.ref, format = "text") %>% 
            map_chr(., pluck, 1)
        },
        error = function(e){
          print("err")
          uniq.refs[i, "long.ref"] <- "MISSING REF"
        },
        warning=function(cond) {
          # uniq.refs[i, "reference"] <- "a.ref" # not working
          print("  - DOI not recover")
        })
      flag <- 1
    }
    # others
    if(flag == 0){
      uniq.refs[i, "long.ref"] <- "MISSING REF"
    }
  }
  write.table(uniq.refs,"neonet/references.tsv", sep="\t", row.names=FALSE)
}

references.df <- read.csv("neonet/references.tsv", sep = "\t")
View(references.df)

