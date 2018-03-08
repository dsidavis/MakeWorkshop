source("setup.R")

png("fig1.png", 400, 400)
plot(df$x, df$y, main = "Untransformed")
dev.off()

