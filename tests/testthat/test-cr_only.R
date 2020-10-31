test_that("cr_only tests", {
  expect_equal(cr_only('html'), TRUE)
  expect_equal(cr_only('latex'), FALSE)
})
