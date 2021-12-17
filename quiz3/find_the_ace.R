play = function() {
  cards = sample(c(1, 2, 3, 4, 5))
  guess = -1
  roll = 0
  guesses_needed = 0
  while(guess != 1) {
    roll = roll + 1
    guess = sample(cards, 1) 
    cards = cards[cards != guess]
  }
  return(roll)
}

n = 10000
possible_wins = c(100, 50, 20, 10, 5)
mean(replicate(n, possible_wins[play()], simplify = T))