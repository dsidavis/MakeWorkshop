df = readRDS("data.rds")

w = is.na(df$y)
df$y[w] = mean(df$y[!w])


