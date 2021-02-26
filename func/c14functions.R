library(oxcAAR)
library(c14bazAAR)
library(RPostgreSQL)
library(DescTools)



# selected ext db(s)
dbs <- c("radon","calpal","euroevol","pacea","14cpalaeolithic") # varia
# retrieve from selected code
a.dat <- 'Ly-5185'
# retrieve selected info
get.infos.PG <- c("site", "code","bp","delta", "us", "taxon", "bib")
get.infos.out <- c("site", "labnr","c14age","c14std", "shortref")

## functions

read.c14.from.PG <- function(){
  # read from PostGres
  drv <- dbDriver("PostgreSQL")
  con <- dbConnect(drv,
                   dbname="mailhac_9",
                   host="localhost",
                   port=5432,
                   user="postgres",
                   password="postgres")  
  c14s <- dbGetQuery(con,"select * from datations")
  dbDisconnect(con)
  return(c14s)
}

f.info.a.date <- function(a.db, a.dt){
  a.dat <- unlist(strsplit(a.dt,':'))[2]
  a.cat <- unlist(strsplit(a.dt,':'))[1]
  # retrieve main info for a selected date
  if(a.cat == "code"){
    if(a.db == 'PG'){
      c14s <- read.c14.from.PG()
      df <- c14s[c14s$code %like any% a.dat, get.infos.PG]
      df <- df[!is.na(df$code), ]
    } else {
      dbC14 <- get_c14data(dbs)
      df <- dbC14[dbC14$labnr == a.dat, get.infos.out]
      df <- df[!is.na(df$labnr), ]
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
  }
  if(a.cat == "site"){
    if(a.db == 'PG'){
      c14s <- read.c14.from.PG()
      df <- c14s[c14s$site %like any% a.dat, get.infos.PG]
      df <- df[!is.na(df$code), ]
    }
  }
  df <- as.data.frame(df)
  df <- df[order(df$code),]
  return(as.data.frame(df))
}

## call
a.dt <- 'code:LTL-8483A'
### examples
## code: 'code:LTL-8483A'
# f.info.a.date("PG", 'code:LTL-8483A')

# site: "site:Pendim%"
# f.info.a.date("PG", 'site:Pendim%')

f.info.a.date("PG", 'site:%Rivoire%')







