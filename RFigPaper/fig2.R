source("setup.R")

png("fig2.png", 400, 400)
plot(df$x, log(df$y), main = "Log transform y")
abline(lm(log(y) ~ x, df), col = "red")
dev.off()
