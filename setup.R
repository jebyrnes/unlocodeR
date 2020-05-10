library(usethis)
library(devtools)

#package setup
#create_tidy_package("./unlocodeR")
use_data_raw(name = "unlocode")
use_data_raw(name = "codes")

use_r("data")
use_readme_rmd()

use_git("First commit")
use_github()

use_test("degrees_numeric")
