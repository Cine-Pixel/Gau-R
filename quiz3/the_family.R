play = function() {
  tries = 1
  child = sample(0:1, 1)
  children = c(child) 
  while(length(intersect(children, c(0, 1))) < 2) {
    child = sample(0:1, 1)
    children = c(children, child) 
    tries = tries+1
  }
  return(length(children))
}

n = 10000
mean(replicate(n, play(), simplify = T))
