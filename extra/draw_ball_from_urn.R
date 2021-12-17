urn1 = sample(c("B1", "B1", "B1", "W", "W"))
urn2 = sample(c("B", "W", "W", "W"))
balls = 1:10000

n = 10000
for(i in 1:n) {
  die = sample(1:6, 1)
  if(die == 1 | die == 2) {
    ball = sample(urn1, 1)
    balls[i] = ball
  } else {
    ball = sample(urn2, 1)
    balls[i] = ball
  }
}

blue_balls = balls[balls != "W"]
length(blue_balls[blue_balls == "B1"])/length(blue_balls)
