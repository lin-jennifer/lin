x = 3.5
sd = 2
n = 25

se = se(sd, n)
ci = 0.95

test_that("tCIupper works", {
  expect_equal(tCIupper(x, se, ci, n), (x + (qt((ci + ((1-ci)/2)), df = n - 1))*se))
})

test_that("tCIlower works", {
  expect_equal(tCIlower(x, se, ci, n), (x - (qt((ci + ((1-ci)/2)), df = n - 1))*se))
})


