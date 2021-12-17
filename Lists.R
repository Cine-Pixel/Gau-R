foo <- list(matrix(data=1:4,nrow=2,ncol=2),c(T,F,T,T),"hello")
foo

#

length(x=foo)

#

foo[[1]]
foo[[3]]

#

foo[[1]] + 5.5
foo[[1]][1,2]
foo[[1]][2,]
cat(foo[[3]],"you!")

#

foo[[3]]
foo[[3]] <- paste(foo[[3]],"you!")
foo

#
foo
foo[[c(2,3)]]

#
foo[2]
bar <- foo[c(2,3)]
bar


## 

names(foo) <- c("mymatrix","mylogicals","mystring")
foo

#

foo$mymatrix

#

foo[[1]]

#
foo
foo$mymatrix
foo$mymatrix[,2]
all(foo$mymatrix[,2]==foo[[1]][,2])

#

baz <- list(tom=c(foo[[2]],T,T,T,F),dick="g'day mate",harry=foo$mymatrix*2)
baz

#

names(baz)


## 

baz$bobby <-foo
baz

#

baz$bobby$mylogicals[1:3]
baz[[4]][[2]][1:3]
baz[[4]]$mylogicals[1:3]