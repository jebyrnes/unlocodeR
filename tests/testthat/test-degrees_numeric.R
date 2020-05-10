test_that("numeric degrees", {
  expect_true(is.numeric(unlocode$latitude_dec))
  expect_true(is.numeric(unlocode$longitude_dec))
})
