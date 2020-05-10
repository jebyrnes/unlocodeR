library(usethis)
library(devtools)

#package setup
#create_tidy_package("./unlocodeR")
use_data_raw(name = "unlocode")
use_data_raw(name = "codes")

use_r("data")
