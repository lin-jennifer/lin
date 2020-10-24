x <- c(1, 1, 2, 3, 5, 8, 13, 21, NA, NA, NA)
w <- c(0, 0, 0, 1, 1, 2, 2, 2, 0, 0, 0)

test_that("mode works", {
  expect_equal(modeNA(x), 1)
})

test_that("mean works", {
  expect_equal(meanNA(x), 6.75)
})

test_that("weighted mean works", {
  expect_equal(wMeanNA(x, w), 11.5)
})
