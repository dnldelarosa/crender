test_that("cr_content test", {
  assign('params', list('html' = TRUE), envir = globalenv())
  expect_equal(cr_content('Daniel'), 'Daniel')
  expect_null(cr_content('Daniel', only = 'latex'))
  expect_null(cr_content('Daniel', cr2 = 'html'))
})
