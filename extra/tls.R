tiger = c(0, 1)
lance = c(2, 3, 4)
serena = c(5, 6, 7, 8, 9)

intersects = function(t) {
  return(
    length(intersect(t, tiger)) > 0 
    & length(intersect(t, lance)) > 0 
    & length(intersect(t, serena)) > 0)
}

all_steps = c()
for(i in 1:10000) {
  tracked = c()
  
  steps = 0
  simulate = T
  while (simulate) {
    curr = sample(0:9, 1)
    tracked = c(tracked, curr)    
    steps = steps+1
    
    if(intersects(tracked)) {
      simulate = F 
    }
  }
  
  all_steps = c(all_steps, steps)
}

mean(all_steps)
