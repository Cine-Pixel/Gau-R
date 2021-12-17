# 1
mean(iris$Sepal.Width) - mean(iris$Petal.Length)

#2
mean(iris[iris$Species == "versicolor",]$Sepal.Width) - mean(iris[iris$Species == "virginica",]$Sepal.Width)

#3
median(iris[iris$Species == "versicolor" | iris$Species == "virginica", ]$Sepal.Width)

#4
br = c(2, 2.4, 3.5, 4.5)
lab = c("A", "B", "C")
iris$Category = cut(iris$Sepal.Width, breaks = br, labels = lab, right = F, include.lowest = T)
mean(iris[iris$Category == "A", ]$Petal.Width) - mean(iris[iris$Category == "B", ]$Petal.Width)

#5
br2 = c(1, 1.7, 5.5, 6)
lab2 = c("A", "B", "C")
iris$Category2 = cut(iris$Petal.Length, breaks = br2, labels = lab2, right = F, include.lowest = T)
max(iris[iris$Category2 == "B" & iris$Species == "setosa", ]$Sepal.Length)
