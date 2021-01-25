library(openxlsx)
library(bibtex)
library(RefManageR)
library(rcrossref)
library(purrr)
library(dplyr)


path <- "C:/Users/supernova/Dropbox/My PC (supernova-pc)/Desktop/NeoNet/"
fich <- "14C_DATES_v3_France_7.xlsx"
bibrefs <- paste0(getwd(),"/neonet/references_france.bib")
bib <- read.bib(bibrefs)

df <- openxlsx::read.xlsx(paste0(path, fich), skipEmptyRows=TRUE)
# a shorter df for uniques references
uniq.refs <- as.data.frame(unique(df$bib_url))
names(uniq.refs)[1] <- "ref"
# sample - - - - - - - -
uniq.refs <- uniq.refs[grepl("^10\\.", uniq.refs[, "ref"]), "ref"]
uniq.refs <- as.data.frame(uniq.refs)
names(uniq.refs)[1] <- "ref"
# - - - - - - - - - - - -
uniq.refs$reference <- uniq.refs$ref # by default
for(i in 1:nrow(uniq.refs)){
 # i <- 39
  flag <- 0
  a.ref <- uniq.refs[i,"ref"]
  print(a.ref)
  # bibtex
  if(grepl("^[[:upper:]]", a.ref)){
    uniq.refs[i, "reference"] <- bib[c(a.ref)]
    flag <- 1
  }
  # dois (all start with '10.')
  # a.ref <- "10.1016/j.quaint.2017.05.027"
  if(grepl("^10\\.", a.ref)){
    tryCatch(
      expr = {
        # uniq.refs[i, "reference"] <- GetBibEntryWithDOI(a.ref)
        uniq.refs[i, "reference"] <- cr_cn(a.ref, format = "text") %>% 
          map_chr(., pluck, 1)
      },
      error = function(e){
        print("err")
        uniq.refs[i, "reference"] <- "a.ref"
      },
      warning=function(cond) {
        # uniq.refs[i, "reference"] <- "a.ref" # not working
        print("  - DOI not recover")
      })
    flag <- 1
  }
  # others
  if(flag == 0){
    uniq.refs[i, "reference"] <- "MISSING REF"
  }
}
# 
# # redo a loop on dois
# for(i in 1:nrow(uniq.refs)){
#   a.missing.doi <- uniq.refs[i,"reference"]
#   if(grepl("^10\\.", a.missing.doi)){
#     print(a.missing.doi)
#     tryCatch(
#       expr = {
#         # uniq.refs[i, "reference"] <- GetBibEntryWithDOI(a.ref)
#         uniq.refs[i, "reference"] <- cr_cn(a.missing.doi, format = "text") %>% 
#           map_chr(., pluck, 1)
#       },
#       error = function(e){
#         print("err")
#         uniq.refs[i, "reference"] <- "a.ref"
#       },
#       warning=function(cond) {
#         # uniq.refs[i, "reference"] <- "a.ref" # not working
#         print("  - DOI not recover")
#       })
#     flag <- 1
#   }
# }

# "10.1016/j.quaint.2020.10.080"
# my_dois <- c("10.1016/j.quaint.2020.10.080")
# cr_cn(my_dois, format = "bibtex") %>%
#   map_chr(., pluck, 1)
# 
# 
# # Use c() to create a vector of DOIs
# my_dois <- c("10.2139/ssrn.2697412", "10.1016/j.joi.2016.08.002", "10.1371/journal.pone.0020961", 
#              "10.3389/fpsyg.2018.01487", "10.1038/d41586-018-00104-7", "10.12688/f1000research.8460.2", 
#              "10.7551/mitpress/9286.001.0001")
# 
# # Use cr_cn to get back citations formatted in Chicago for those DOIs
# my_citations <- rcrossref::cr_cn(my_dois[2], format = "text", style = "chicago-note-bibliography") %>% 
#   purrr::map_chr(., purrr::pluck, 1)
# 
# # print the formatted citations
# my_citations

