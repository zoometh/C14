library(oxcAAR)
library(c14bazAAR)

# load Radon database
radonC14 <- get_c14data("radon")
# function to retrieve main info from a date
f.info.a.date <- function(a.db, a.dat){
  col.nmes <- c("site", "labnr","c14age","c14std", "shortref")
  df <- a.db[a.db$labnr == a.dat, col.nmes]
  df <- df[!is.na(df$labnr), ]
  return(as.data.frame(df))
}
# run
f.info.a.date(radonC14, 'Ly-5185')

## Not run: 
x <- oxcalCalibrate(c(5000, 4500, 3000), c(20, 50, 60))
get_name(x)
y <- oxcalCalibrate(5000, 20)[[1]]
get_name(y)

## End(Not run)