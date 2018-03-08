source("setup.R")

png("fig2.png", 400, 400)
plot(df$x, log(df$y))
dev.off()
