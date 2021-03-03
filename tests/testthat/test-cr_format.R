test_that("cr_format is html if NULL", {
  expect_equal(cr_format(), 'html')
  withr::local_envvar(
    knitr::opts_knit$set(rmarkdown.pandoc.to = 'latex',
                         rmarkdown.pandoc.args = c("--templat", "docxscs")
    )
  )
  expect_equal(cr_format(), 'latex')
  expect_equal(
    cr_format(list(docx = TRUE)),
    "latex"
  )
  withr::local_envvar(
    knitr::opts_knit$set(rmarkdown.pandoc.to = 'latex',
                         rmarkdown.pandoc.args = c("--template", "docxscs")
    )
  )
  expect_equal(
    cr_format(list(docx = TRUE)),
    "docx"
  )
  expect_equal(
    cr_format(list(docx = FALSE)),
    "docx"
  )
  withr::local_envvar(
    knitr::opts_knit$set(rmarkdown.pandoc.to = NULL)
  )
})
