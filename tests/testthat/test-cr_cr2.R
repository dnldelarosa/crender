test_that("cr_double tests", {
  #withr::local_envvar(.new = c(params = list('html' = TRUE)))
  assign('params', list('html' = TRUE, 'latex' = FALSE), envir = globalenv())
  expect_equal(cr_cr2('html'), FALSE)
  expect_equal(cr_cr2('latex'), TRUE)
})
