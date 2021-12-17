all_turns = c()
target = 10
n = 10000
for(i in 1:n) {
  current = -1 
  turns = 0
  while(current < 10) {
    turns = turns + 1
    current = current + sample(1:6, 1)
  }
  if(current == 10) {
    all_turns = c(all_turns, turns)
  }
}

mean(all_turns)
