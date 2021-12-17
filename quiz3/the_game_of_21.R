n = 10000 
all_rolls = c()
for(i in 1:n) {
  my_score = 0
  roll_count = 0
  while(my_score <= 18) {
    roll_count = roll_count + 1
    roll = sample(1:6, 1)
    my_score = my_score + roll
  }
  if(my_score < 21) {
    all_rolls = c(all_rolls, roll_count) 
  }
}

mean(all_rolls) # rolls to win
hist(all_rolls)
length(all_rolls)/n # chances of winning
