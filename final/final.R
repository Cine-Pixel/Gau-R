survey <- read.csv("final/fl_student_survey.csv",header=TRUE,sep=",",dec=".")
head(survey)

#1
intervals = cut(survey$TV, breaks = c(0, 7, 14, 25, 37), labels = c('A', 'B', 'C', 'D'), include.lowest = T, right = F)
mean(survey[intervals == 'B',]$distance_residence) - mean(survey[intervals == 'A',]$distance_residence)

# 2
mean(survey[survey$gender == 'm' & intervals == 'B',]$college_GPA) - mean(survey[survey$gender == 'f' & intervals == 'A',]$college_GPA)

# 3
100*nrow(survey[survey$gender == 'm' & intervals == 'A' & survey$political_affiliation == 'r',])/nrow(survey[survey$gender == 'm',])

# 4
100*nrow(survey[survey$life_after_death == 'y' & survey$religiosity == 1,])/nrow(survey[survey$religiosity == 1,])

# 5
100*nrow(survey[survey$life_after_death == 'y' & survey$religiosity == 2 & survey$gender == 'f',])/nrow(survey[survey$religiosity == 2 & survey$gender == 'f',])

# 6
100*nrow(survey[survey$political_affiliation != 'r' & survey$gender == 'f' & survey$abortion_legalize == 'n',])/nrow(survey[survey$political_affiliation != 'r' & survey$gender == 'f',])

# 7
100*nrow(survey[survey$abortion_legalize == 'y' & survey$gender == 'm' & survey$political_affiliation != 'd',])/nrow(survey[survey$abortion_legalize == 'y',])

# 8
plot(survey$high_sch_GPA, survey$college_GPA, col=intervals, pch=16)
legend("topleft",
       legend=c("A", "B", "C", "D"),
       pch=16,
       col=intervals)
