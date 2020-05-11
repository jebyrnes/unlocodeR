test_that("longitude correct form", {

  a <- unlocode$longitude
  a1 <- a[!is.na(a)]
  b <- sapply(a1, function(x) length(strsplit(x, " ")[[1]]))

 expect_true( length(which(b != 3))==0 )
})


test_that("latitude correct form", {

  a <- unlocode$latitude
  a1 <- a[!is.na(a)]
  b <- sapply(a1, function(x) length(strsplit(x, " ")[[1]]))

  expect_true( length(which(b != 3))==0 )
})


test_that("latlong ranges", {

  lat_range <- range(unlocode$latitude_dec, na.rm=TRUE)
  lon_range <- range(unlocode$longitude_dec, na.rm=TRUE)

  expect_lt(abs(lat_range[1]), 180)
  expect_lt(abs(lat_range[2]), 180)
  expect_lt(abs(lon_range[1]), 180)
  expect_lt(abs(lon_range[2]), 180)

})
