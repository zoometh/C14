library(gsheet)
library(bibtex)
library(RefManageR)
# devtools::install_github("crsh/citr")
library(citr)
# read the db sprea
xl.url <- 'docs.google.com/spreadsheets/d/1A85x9wnWGpAhcdQbg1_RKa-OyYj64zqn3-vhkcIgOn8/edit' # 14C_3
df.tot <- read.csv(text=gsheet2text(xl.url, format = "csv"),
                   stringsAsFactors=FALSE) #
# colnames(df.tot)


path <- "D:/Cultures_9/Neolithique/web/references.bib"
bib <- read.bib(path)
print(bib, style = "Bibtex")
bib[c("Binder18")]

#
bib <- ReadBib(path, check = FALSE)
bib

#
path <- "D:/Cultures_9/Neolithique/web/references.bib"
df <- bib2df(path)
df <- df[df$BIBTEXKEY == "Binder18",]

#Binder18 
GetBibEntryWithDOI(c("10.4312/dp.44.4"))
