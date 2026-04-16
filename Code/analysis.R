NESARC <- read.csv("~/Code/lodestar/MATH314/GroupProject/DataSheets/Nesarc_Data_Clean.csv")

#Getting rid of other rows (Specifically NA)
analysis <- NESARC[complete.cases(NESARC[, c("PREV_MONTHS", "FREQ_FEEL")]), ]

#Numbering depression levels for depression levels from 1-5 for easaier anaylsis
analysis$depression_score <- factor(
  analysis$FREQ_FEEL,
  levels = c( 
    "All of the time",  # 1 
    "Most of the time",
    "Some of the time",
    "A little of the time",
    "None of the time"  # 5 
  ),
  ordered = TRUE
)

#moving
analysis$depression_score_num <- as.numeric(analysis$depression_score)

#Compare 2 sample t-test comparing depression scores between drinkers and non-drinkers
t.test(depression_score_num ~ PREV_MONTHS, data = analysis)

#Calculate mean depression score 
tapply(analysis$depression_score_num, analysis$PREV_MONTHS, mean)

#Create box plot
boxplot(depression_score_num ~ PREV_MONTHS,
        data = analysis,
        col = c("darkblue", "darkred"),
        xlab = "Alcohol Use Past 12 Months",
        ylab = "Depression Frequency Score",
        main = "Depressive Symptoms by Alcohol Use")