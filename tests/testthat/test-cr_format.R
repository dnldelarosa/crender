test_that("cr_format is html if NULL", {
  expect_equal(cr_format(), 'html')
  withr::local_envvar(
    knitr::opts_knit$set(rmarkdown.pandoc.to = 'latex')
  )
  expect_equal(cr_format(), 'latex')
  withr::local_envvar(
    knitr::opts_knit$set(rmarkdown.pandoc.to = NULL)
  )
})
