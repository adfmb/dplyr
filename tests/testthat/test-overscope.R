context("overscope")

test_that(".data has strict matching semantics (#2591)", {
  expect_error(
    tibble(a = 1) %>% mutate(c = .data$b),
    "data"
  )

  expect_error(
    tibble(a = 1:3) %>% group_by(a) %>% mutate(c = .data$b),
    "data"
  )
})
