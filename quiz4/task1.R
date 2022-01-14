x = -3:3
y = seq(7, 13, length.out=length(x))
plot(x, y, type="n")
axis(side = 1, at = -3:3)
axis(side = 2, at = c(7:13))

abline(v=c(-3, 3), lty=2, lwd=2)
abline(h=c(7, 13), lty=2, lwd=2)

arrows(x0=c(-2.6, -2.6, -2.6, 2.6, 2.6, 2.6),
       y0=c(12.6, 10, 7.4, 12.6, 10, 7.4),
       x1=c(-1, -1, -1, 1, 1, 1),
       y1=c(10.6, 10, 9.4, 10.6, 10, 9.4))


text(x=0, y=10,label="SOMETHING\nPROFOUND", cex=0.8)
