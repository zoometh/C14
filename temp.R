library(openxlsx)
library(bibtex)
library(RefManageR)

# path <- "C:/Users/supernova/Dropbox/My PC (supernova-pc)/Desktop/NeoNet/"
path <- "/neonet/"
fich <- "14C_DATES_v3_France_5.xlsx"
df <- openxlsx::read.xlsx(paste0(path, fich), skipEmptyRows=TRUE)

## bibref
bibrefs <- "references_france.bib"
bib <- read.bib(paste0(path, bibrefs))
# path.bib <- paste0(path, "references_france.bib")
# bib <- read.bib(path.bib)
# print(bib, style = "Bibtex")
keys.bib <- as.data.frame(unique(df$bib_url[grepl("^[[:upper:]]", df$bib_url)]))
names(keys.bib)[1] <- "bib.key"
for(i in 1:nrow(keys.bib)){
  print(i)
  keys.bib[i, "reference"] <- bib[c(keys.bib[i, "bib.key"])]
}


## dois
dois <- df$bib_url[grepl("^http", df$bib_url)]
a <- GetBibEntryWithDOI(dois[1])
class(a)
