# a
parties.levels = c("National", "Maori","Labour","Greens", "Other")
parties.char = rep("National", 20)
parties.char

parties.char[c(1, 4, 12, 15, 16, 19)] = "Labour"
parties.char[c(6, 9, 11)] = "Greens"
parties.char[c(10, 20)] = "Other"

sex.levels = c("M", "F")
sex.char = rep("M", 20)
sex.char[c(1, 5:7, 12, 14:16)] = "F"
sex.char


# b
parties.fac = factor(parties.char, levels=parties.levels)
parties.fac

sex.fac = factor(sex.char, sex.levels)
sex.fac

# c
# i
parties.fac[sex.fac == "M"]
# ii
sex.fac[parties.char=="National"]

# d
parties.fac = as.factor(c(parties.fac, as.factor(c("National","Maori","Maori","Labour","Greens","Labour"))))
sex.fac = as.factor(c(sex.fac, as.factor(c("M","M","F","F","F","M"))))

parties.confidence = c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 40, 56, 45,64, 31, 10, 29, 40,95, 18, 61)
parties.confidence

# e
br = c(0, 30, 70, 100)
lab = c("Low", "Moderate", "High")
confidence.lvls = cut(parties.confidence, breaks = br, right = F, include.lowest = T, labels = lab)

# f
confidence.lvls[parties.char=="Labour"]
confidence.lvls[parties.char=="National"]
