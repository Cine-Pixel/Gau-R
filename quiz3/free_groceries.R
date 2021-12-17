play = function() {
  winner_count = 1
  weeks_win = sample(prizes, 1) 
  while(weeks_win < 500) {
    weeks_win = weeks_win + sample(prizes, 1)
    winner_count = winner_count + 1
  }
  return(winner_count)
}

n = 10000
mean(replicate(n, play()))
