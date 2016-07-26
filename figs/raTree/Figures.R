###################################################
#### 	Figures in Chapter 2 in my Thesis
####		Soo-Heang Eo, 
####		Department of Statistics,
####		Korea University, Seoul
###################################################

#####
# Motivation example

plot(0,0, type = "n", xlab = "", ylab = "", axes = FALSE)
mtext(expression(Z[1]), side = 1, line = 3, cex = 2)
mtext(expression(Z[2]), side = 2, line = 2.2, cex = 2)
box()
abline(v = -0.4, col = "blue")
abline(v = 0.3, col = "blue")
points( c(-2, -0.4), c(0.1, 0.1), type = "l", col = "tomato")
points( c(0.3, 2), c(-0.3, -0.3), type = "l", col = "tomato")
text(0,0, labels = expression(R[3]), cex = 3)
text(-0.7,0.5, labels = expression(R[2]), cex = 3)
text(-0.7,-0.6, labels = expression(R[1]), cex = 3)
text(0.7,-0.7, labels = expression(R[4]), cex = 3)
text(0.7,.3, labels = expression(R[5]), cex = 3)
axis(side = 1, at = c(-0.4, 0.3), c(expression(c[1]), expression(c[3])), col = "blue", cex.axis = 2)
axis(side = 2, at = c(0.1), c(expression(c[2])), col = "tomato", cex.axis = 1.6)
axis(side = 4, at = c(-0.3), c(expression(c[4])), col = "tomato", cex.axis = 1.6)

# set the number of observations
n = 100

# generate predictor variables Z1 and Z2 from uniform
Z1 = runif(n)
Z2 = runif(n)

# generate dependent variable by using constant model
Y = Z1 + 