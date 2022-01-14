play = function() {
  prizes = c(rep(200, 10), rep(100, 10), rep(50, 20), rep(20, 60))
  winner_count = 1
  weeks_win = sample(prizes, 1) 
  while(weeks_win < 500) {
    current_prize = sample(prizes, 1)
    weeks_win = weeks_win + current_prize 
    prizes = prizes[-which(prizes %in% 20)[1]]
    winner_count = winner_count + 1
  }
  return(winner_count)
}

n = 10000
mean(replicate(n, play()))
