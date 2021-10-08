2+3
14/6
14/(6+5)
3^2
sqrt(x=9)
sqrt(5.311)

119.5

0.08512966

2342151012900

x <- -5

x
x = x + 1 # this overwrites the previous value of x

mynumber = 45.2
y <- mynumber*x
y
myvec <- c(1,3,1,42)
myvec
foo <- 5.3
myvec2 <- c(3,-3,2,3.45,1e+03,64^0.5,2+(3-1.1)/9.44,foo)
myvec2
myvec3 <- c(myvec,myvec2)
myvec3

3:27

foo <- 5.3
bar <- foo:(-47+1.5)

bar
seq(from=3,to=27,by=3)
seq(from=3,to=27,length.out=40)

foo <- 5.3
myseq <- seq(from=foo,to=(-47+1.5),by=-2.4)
myseq
myseq2 <- seq(from=foo,to=(-47+1.5),length.out=5)
myseq2
rep(x=1,times=4)
rep(x=c(3,62,8.3),times=3)

rep(x=c(3,62,8.3),each=2)
rep(x=c(3,62,8.3),times=3,each=2)

foo <- 4
c(3,8.3,rep(x=32,times=foo),seq(from=-2,to=1,length.out=foo+1))
sort(x=c(2.5,-1,-10,3.44))
sort(x=c(2.5,-1,-10,3.44),decreasing=TRUE)
foo <- seq(from=4.3,to=5.5,length.out=8)
foo
bar <- sort(x=foo,decreasing=TRUE)
bar
sort(x=c(foo,bar),decreasing=FALSE)

length(x=c(3,2,8,1))

length(x=5:13)