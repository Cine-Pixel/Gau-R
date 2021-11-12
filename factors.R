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


parties.fac = factor(parties.char, levels=parties.levels)
parties.fac

sex.fac = factor(sex.char, sex.levels)
sex.fac

parties.fac[sex.fac == "M"]
