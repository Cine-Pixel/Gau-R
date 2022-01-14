weight = c(55, 85, 75, 42, 93, 63, 58, 75, 89, 67)
height = c(161, 185, 174, 154, 188, 178, 170, 167, 181, 178)
sex = c("female", "male", "male", "female", "male", "male", "female", "male", "male", "female")

length(weight)
length(height)
length(sex)

plot(weight, height, type="n")
points(weight[sex == 'female'], height[sex == 'female'], pch=16, col="green")
points(weight[sex == 'male'], height[sex == 'male'], pch=1, col="blue")

legend("topleft",
       legend=c("female", "male"),
       pch=c(16, 1),
       col=c("green", "blue"))

title(main = "Weight and Height correlation for males and females", xlab = "Weight", ylab = "Height")