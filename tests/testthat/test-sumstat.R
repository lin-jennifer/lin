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

test_that("median works", {
  expect_equal(medianNA(x), 4)
})

test_that("minima works", {
  expect_equal(minNA(x), 1)
})

test_that("maxima works", {
  expect_equal(maxNA(x), 21)
})

test_that("range works", {
  expect_equal(rangeNA(x), c(1, 21))
})

test_that("standard deviation works", {
  expect_equal(sdNA(x), sdNA(x))
})

test_that("sum works", {
  expect_equal(sumNA(x), 54)
})

test_that("variance works", {
  expect_equal(varNA(x), varNA(x))
})


