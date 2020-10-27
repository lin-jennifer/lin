x = 3.5
sd = 2
n = 25


test_that("se works", {
  expect_equal(se(sd, n), 0.4)
})

se = se(sd, n)
ci = 0.95

test_that("zCIupper works", {
  expect_equal(zCIupper(x, se, ci), (x + (qnorm((ci + ((1-ci)/2))))*se))
})

test_that("zCIlower works", {
  expect_equal(zCIlower(x, se, ci), (x - (qnorm((ci + ((1-ci)/2))))*se))
})

