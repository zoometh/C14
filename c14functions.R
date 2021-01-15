library(oxcAAR)
library(c14bazAAR)

radonC14 <- get_c14data("radon")

## Not run: 
x <- oxcalCalibrate(c(5000, 4500, 3000), c(20, 50, 60))
get_name(x)
y <- oxcalCalibrate(5000, 20)[[1]]
get_name(y)

## End(Not run)