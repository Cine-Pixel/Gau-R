# Create and store a vector that contains the following, in this order:
#  – A sequence of length 5 from 3 to 6 (inclusive)
a = seq(3, 6, length.out=5)
a
#  – A twofold repetition of the vector c(2,-5.1,-33)
a = c(a, rep(c(2, -5.1, -33), times=2))
a
#  – The value 7
a = c(a, 7/42+2)
a
#  - 42 + 2

# c(seq(from=3,to=6,length.out=5),rep(c(2,-5.1,-33),times=2),7/42+2)

# b. Extract the first and last elements of your vector from (a), storing
# them as a new object.
b = c(a[1], a[length(a)])
b


# c. Store as a third object the values returned by omitting the first
# and last values of your vector from (a).
v = a[2:(length(a)-1)]
v


# d. Use only (b) and (c) to reconstruct (a).
a = c(b, v)
a


# e. Overwrite (a) with the same values sorted from smallest to
# largest.
a = sort(a)
a

# f. Use the colon operator as an index vector to reverse the order
# of (e), and confirm this is identical to using sort on (e) with
# decreasing=TRUE.
a[length(a):1]
a = sort(a, decreasing=T)


# g. Create a vector from (c) that repeats the third element of (c)
# three times, the sixth element four times, and the last element
# once.
g = c(rep(v[3], 3), rep(v[6], 4), rep(v[length(v)], 1))
g


# h. Create a new vector as a copy of (e) by assigning (e) as is to a
# newly named object. Using this new copy of (e), overwrite the
# first, the fifth to the seventh (inclusive), and the last element with
# the values 99 to 95 (inclusive), respectively.
e_copy = a
e_copy[c(1, 5:7, length(e_copy))] = 99:95
sort(e_copy, decreasing=T)
