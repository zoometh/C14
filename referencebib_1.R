library(openxlsx)
library(bibtex)
library(RefManageR)
library(rcrossref)
library(purrr)
library(dplyr)


c14data.to.github <- F
c14ref.to.github <- F
join.c14data.and.c14ref <- T

gh.master <- 'https://raw.github.com/zoometh/C14/master/' # github 'C14' folder
gh.master <- paste0(getwd(),"/")
path.data <- "C:/Users/supernova/Dropbox/My PC (supernova-pc)/Desktop/NeoNet/"
fich <- "14C_DATES_v3_France_8.xlsx"
df <- openxlsx::read.xlsx(paste0(path.data, fich), skipEmptyRows=TRUE)
bibrefs <- paste0(getwd(),"/neonet/references_france.bib")

if(join.c14data.and.c14ref){
  # load .tsv from GitHub
  c14data.url <- paste0(gh.master, 'neonet/c14data.tsv')
  c14data <- read.csv(c14data.url, sep = "\t")
  c14ref.url <- paste0(gh.master, 'neonet/c14refs.tsv')
  c14ref <- read.csv(c14ref.url, sep = "\t")
  # merge on key
  df.tot <- merge(c14data, c14ref, by.x="bib_url", by.y="key.or.doi", all.x = T)
  # renames before run app ()
  colnames(df.tot)[which(names(df.tot) == "long.ref")] <- "bib"
}
if(c14data.to.github){
  # create .tsv from the .xlsx file to be
  # put file on GitHub
  write.table(df,"neonet/c14data.tsv", sep="\t", row.names=FALSE)
}
if(c14ref.to.github){
  # for a .xlsx file of 14C
  # recalcultate the "long.ref" value from BibTex entries (file 'references_france.bib')
  # or DOIs for unique references 
  # TODO: link with .xlsx file
  bib <- read.bib(bibrefs)
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
  write.table(uniq.refs,"neonet/c14refs.tsv", sep="\t", row.names=FALSE)
  references.df <- read.csv("neonet/c14ref.tsv", sep = "\t")
  View(references.df)
}

