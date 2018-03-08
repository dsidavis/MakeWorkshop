n = 100
x = runif(n, 0, 10)
y = exp(x) + rexp(n, .4)
d = data.frame(x = x, y = y)


saveRDS(d, "data.rds")
