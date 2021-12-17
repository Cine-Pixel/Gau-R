z=seq(1:10000)
for (j in 1:10000){
  x=sample(1:365,25,replace=TRUE)
  for (i in 1:25) {
    if(length(subset(x, x[i]==x[-i]))) {
      z[j] = 1
      break
    } else {
      z[j] = 0
    }
    # z[j]=ifelse(length(subset(x,x[i]==x[-i]))>0, 1, 0)
  }
}

sum(z)
mean(z)
