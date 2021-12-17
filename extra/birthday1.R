play = function(n){
  x1 = sample(1:6, n, replace=T)
  x2 = sample(1:6, n, replace=T)
  x3 = x1+x2
  
  return(length(x3[x3==7])/n)
}

x = c()
for(i in 1:1000) {
  x = c(x, play(10000))
}
hist(x)


good = 0
n=10000
people = 25 
for(i in 1:n) {
  bdays = sample(1:365, people, replace=T)
  match = length(bdays) - length(unique(bdays))
  
  if(match >= 1) {
    good = good+1
  }
}
good/n

match = function(x) {
  if(length(x) < 1) {
    return(F)
  }
  if(length(subset(x, x[1]==x[-1]))) {
    return(T)
  }
  return(match(x[-1]))
}

count = 0
for(i in 1:100) {
  if(match(sample(1:365, 25, replace=T))) {
    count = count+1
  }
}
count/100