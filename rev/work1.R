# Create and store a sequence of values from 5 to −11 that progresses
# in steps of 0.3.

a = seq(5, -11, -0.3)
a

# b. Overwrite the object from (a) using the same sequence with the
# order reversed.
a = sort(a, decreasing=F)
a

# c. Repeat the vector c(-1,3,-5,7,-9) twice, with each element
# repeated 10 times, and store the result. Display the result sorted
# from largest to smallest.
c = rep(c(-1, 3, -5, 7, -9), times = 2, each = 10)
c


#d. Create and store a vector that contains, in any configuration, the
#following:
# i. A sequence of integers from 6 to 12 (inclusive)
d = 6:12
d

# ii. A threefold repetition of the value 5.3
d = c(d, rep(5.3, 3))
d
# iii. The number −3
d = c(d, -3)
d
# iv. A sequence of nine values starting at 102 and ending at the
# number that is the total length of the vector created in (c)
d = c(d, seq(102, length(c), length.out=9))
d

# e. Confirm that the length of the vector created in (d) is 20.
# Numerics,
length(d)
length(d) == 20

d = c(6:12, rep(5.3, 3), -3, seq(102, length(c), length.out=9))
length(d) == 20
