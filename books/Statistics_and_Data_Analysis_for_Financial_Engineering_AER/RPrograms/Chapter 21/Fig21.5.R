#  Figure 21.5

x=seq(0,3,length=401)
f1 = (x>1)

postscript("quadSplines.ps",width=8,height=4)  #  Figure 21.5
par(mfrow=c(1,2))
plot(x, x + 2*(x-1)^2-3*f1*(x-1)^2,type="l",main="(a)",ylab="")
abline(v=1,lty=3)
plot(x,2*f1,type="l",ylim=c(0,4),lwd=2,lty=1,ylab="",main="(b)")
lines(x,f1*(x-1)^2,lwd=2,lty=2)
lines(x,2*f1*(x-1),lwd=3,lty=3)
legend("topleft",c("plus fn.","derivative","2nd derivative"),
   lty=c(2,3,1),lwd=c(2,2,3))
graphics.off()