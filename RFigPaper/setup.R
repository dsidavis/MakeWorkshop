df = readRDS("data.rds")

w = is.na(df$y)
df$y[w] = mean(df$y[!w])

# Add noise to y.
df$y = df$y + rnorm(nrow(df), , 2e10)


