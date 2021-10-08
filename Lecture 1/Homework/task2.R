# a .Create and store a vector that contains the following, in this order:
#  – A sequence of length 5 from 3 to 6 (inclusive)
#  – A twofold repetition of the vector c(2,-5.1,-33)
#  – The value 7
#  42 + 2
a = c(seq(3, 6, length.out=5), rep(c(2, -5.1, -33), times=2), 7, 42+2)
a


# b. Extract the first and last elements of your vector from (a), storing
# them as a new object.
b = a[c(1, length(a))]
b


# c. Store as a third object the values returned by omitting the first
# and last values of your vector from (a).
c = a[2:(length(a)-1)]
c


# d. Use only (b) and (c) to reconstruct (a).
a = c(b, c)
a


# e. Overwrite (a) with the same values sorted from smallest to largest.
a = sort(a)
a
e = a


# f. Use the colon operator as an index vector to reverse the order
# of (e), and confirm this is identical to using sort on (e) with
# decreasing=TRUE.
setequal(e[length(e):1], sort(e, decreasing = TRUE))


# g. Create a vector from (c) that repeats the third element of (c)
# three times, the sixth element four times, and the last element
# once.
g = c(rep(c[3], times=3), rep(c[6], times=4), c[length(c)])
g


# h. Create a new vector as a copy of (e) by assigning (e) as is to a
# newly named object. Using this new copy of (e), overwrite the
# first, the fifth to the seventh (inclusive), and the last element with
# the values 99 to 95 (inclusive), respectively.
h = e
h[c(1, 5:7, length(h))] = seq(from=99, to=95)
h
