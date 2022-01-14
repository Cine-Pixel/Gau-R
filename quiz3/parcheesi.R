play = function() {
  turns = 0
  while(TRUE) {
    turns = turns + 1 
    dies = sample(1:6, 2, replace=T)
    if(sum(dies) == 3 | 3 %in% dies) {
      break
    }
  }
  return(turns)
}

n = 10000
mean(replicate(n, play(), simplify = T))
