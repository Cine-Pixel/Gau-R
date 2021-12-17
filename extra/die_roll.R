play = function() {
  die = sample(1:6, 1)
  if(die == 6) {
    return(100)
  } else {
    die = sample(1:6, 1)
    if(die == 6) {
      return(50)
    }
  }
  return(0)
}


total_win = 0
n = 100000
for(i in 1: n) {
  total_win = total_win + play() 
}
total_win/n
