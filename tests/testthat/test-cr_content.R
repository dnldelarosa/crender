test_that("cr_content test", {
  assign('params', list('html' = TRUE), envir = globalenv())
  assign('a', "aaaaaaaaaaaaaaaaa", envir = globalenv())
  expect_equal(cr_content('Texto a incluir'), 'Texto a incluir')
  expect_null(cr_content('Texto a incluir', only = 'latex'))
  expect_null(cr_content('Texto a incluir', cr2 = 'html'))
  expect_equal(cr_content('{a}'), "aaaaaaaaaaaaaaaaa")
  expect_equal(cr_content('a'), "a")
})
