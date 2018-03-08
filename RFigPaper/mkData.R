n = 100
x = runif(n, 40, 90)
y = exp(x) + rexp(n, .4)
d = data.frame(x = x, y = y)

saveRDS(d, "data.rds")
