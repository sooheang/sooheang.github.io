#####################
## Motivation for split variable selection
# Motivation example for main-effects test

# For numeric partitioning variable Z_1
plot(dataSet@Z[,7], dataSet@resid[,1], xlab = "", ylab = "", cex = .75, col = "blue")
mtext(expression(Z[1]), side = 1, line = 3, cex = 1.75)
mtext("Residuals", side = 2, line = 2, cex = 1.75)
mtext("Main-effects test for ordered Z", side = 3, line = 1, cex = 2)
abline(h = 0, col = "tomato", lty = 2)
abline(v = 1.43, col = "tomato", lty =2)
abline(v = 4.02, col = "tomato", lty =2)

# For categorical partitioning variable Z_1
plot(jitter(as.numeric(dataSet@Z[,3])), dataSet@resid[,1], xlab = "", ylab = "", cex = .75, axes = FALSE, xlim = c(0.5, 2.5), col = "blue")
mtext(expression(Z[2]), side = 1, line = 3, cex = 1.75)
mtext("Residuals", side = 2, line = 2, cex = 1.75)
mtext("Main-effects test for categorical Z", side = 3, line = 1, cex = 2)
axis(side = 1, at = c(1,2))
axis(side =2)
box()
abline(h = 0, col = "tomato", lty = 2)
abline(v = 1.5, col = "tomato", lty =2)

# Motivation example for interaction-effects test
library(scatterplot3d)
s3d <- scatterplot3d(dataSet@Z[,6], dataSet@Z[,2], dataSet@resid[,1], angle = 30, cex.symbol = 0.75,
	color = ifelse(dataSet@resid[,1] <= 0, "blue", "blue"), box = TRUE, col.grid = "lightblue", grid = FALSE,
	main = "Interaction-effects test for Type and Time",
	xlab = "Time",
	ylab = "Type",
	zlab = "Residuals")

for(i in seq(-6, 6, length.out = 2)){
	s3d$points3d(seq(0,35, length.out = 100), seq(1.5,1.5,length.out = 100), seq(i, i, length.out = 100), col = "tomato", type = "l", lty = 2)
	s3d$points3d(seq(17,17, length.out = 100), seq(1,2,length.out = 100), seq(i, i, length.out = 100), col = "tomato", type = "l", lty = 2)
}

for(i in seq(1,2, length.out = 3)){
	s3d$points3d(seq(17,17, length.out = 100), seq(i,i,length.out = 100), seq(-6, 6, length.out = 100), col = "tomato", type = "l", lty = 2)
	s3d$points3d(seq(0,35, length.out = 100), seq(i,i,length.out = 100), seq(0, 0, length.out = 100), col = "tomato", type = "l", lty = 2)
}

for(i in seq(0,35, length.out = 3)){
	s3d$points3d(seq(i,i, length.out = 100), seq(1.5,1.5,length.out = 100), seq(-6, 6, length.out = 100), col = "tomato", type = "l", lty = 2)
	s3d$points3d(seq(i,i, length.out = 100), seq(1,2,length.out = 100), seq(0, 0, length.out = 100), col = "tomato", type = "l", lty = 2)
}


# PRESS plot
plot(PRESS, xlab = "", ylab = "", cex = .75, col = "blue")
mtext(expression(PRESS[CV]), side = 2, line = 2, cex = 1.75)
mtext("Number of components", side = 1, line = 3, cex = 1.75)
abline(h = PRESS[ncomp.se] + 0.5 * PRESS.se[ncomp.se], col = "tomato", lty = 2)
points(ncomp, PRESS[ncomp], col = "tomato", pch = 19)
points(ncomp.se, PRESS[ncomp.se], col = "blue", pch = 19)
