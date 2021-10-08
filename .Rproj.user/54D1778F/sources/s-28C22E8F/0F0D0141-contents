df = read.csv("./datasets/Heart Attack Data Set.csv")
dim(df)
attributes(df)
colnames(df)[1] = "age"

df[1:5, c("age", "target")]
head(df)
df[1:5, ]
dim(df[df$age > 50, ])[1]
dim(df[df$age > 50 & df$sex==1, ])[1]
