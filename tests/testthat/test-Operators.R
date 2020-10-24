y = c(3, 4, 5, NA)

test_that("nin works", {
  expect_equal(y %nin% 3, c(FALSE, TRUE, TRUE, TRUE))
})

test_that("NIN works", {
  expect_equal(y %NIN% 3, c(FALSE, TRUE, TRUE, NA))
})

test_that("IN works", {
  expect_equal(y %IN% 3, c(TRUE, FALSE, FALSE, NA))
})
