library(oxcAAR)
library(c14bazAAR)

# selected db(s)
dbs <- c("radon","calpal","euroevol","pacea","14cpalaeolithic") # varia
# retrieve info
get.infos <- c("site", "labnr","c14age","c14std", "shortref")
a.dat <- 'Ly-5185'

get.c14.from.other.DB <- F
retrieve.from.other.DB <- F 

f.info.a.date <- function(a.db, a.dat){
  # retrieve main info for a selected date
  df <- a.db[a.db$labnr == a.dat, get.infos]
  df <- df[!is.na(df$labnr), ]
  return(as.data.frame(df))
}

if(get.c14.from.other.DB){
  # load external db(s)
  dbC14 <- get_c14data(dbs)
}

if (retrieve.from.other.DB){
  # ...
  f.info.a.date(dbC14, a.dat)
  # TODO: filters (country, etc.)
  # sdb <- dbC14 %>%
  #   fix_database_country_name() %>%
  #   determine_country_by_coordinate()
  # # clean up
  # sdb.Fr <- sdb[sdb$country_thes == "France",]
  # sdb.Fr <- sdb.Fr[sdb.Fr$lat <= 46,]
  # sdb.Fr <- sdb.Fr[sdb.Fr$c14age <= 8000,]
  # sdb.Fr <- sdb.Fr[sdb.Fr$c14age >= 5000,]
}





