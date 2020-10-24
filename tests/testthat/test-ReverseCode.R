x1 <- c(0, 1, 2, NA, 4, 7)

test_that("reverse code with 0 works", {
  expect_equal(reverse_code(x1), c(7, 6, 5, NA, 3, 0))
})

x2 <- c(1, 2, 3, 4, NA, 5)

test_that("reverse code without 0 works", {
  expect_equal(reverse_code(x2), c(5, 4, 3, 2, NA, 1))
})
