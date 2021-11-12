head(iris)
iris$Petal.Length[c(1, 20)]

br = c(0, 2.5, 10)
lab = c("A", "B")

cut(iris$Sepal.Width, breaks=br, rigth=F, labels = lab)

iris$Category = cut(iris$Sepal.Width, breaks=br, rigth=F, labels = lab)

mean(iris$Sepal.Length[iris$Category=="A"])

iris[iris$Category=="A" & iris$Sepal.Width>2.4,]
