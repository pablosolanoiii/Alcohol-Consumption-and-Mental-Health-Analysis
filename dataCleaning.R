# Pablo Solano III 
Nesarc_Data <- read.csv("~/Code/lodestar/MATH314/GroupProject/Nesarc_Data.csv", header =TRUE)
table(Nesarc_Data$S2BQ1A16)

# Data cleaning 

# Alcohol use in the past 12 months 
Nesarc_Data$S2AQ3[!(Nesarc_Data$S2AQ3 %in% c(1, 2, 3))] <- NA
Nesarc_Data$S2AQ3[Nesarc_Data$S2AQ3 == 3] <- NA

# Frequency of alcohol consumption
Nesarc_Data$S2AQ5B[!(Nesarc_Data$S2AQ5B %in% c(1:10, 99))] <- NA
Nesarc_Data$S2AQ5B[Nesarc_Data$S2AQ5B == 99] <- NA

# Typical number of drinks on drinking days
Nesarc_Data$S2AQ5D[!(Nesarc_Data$S2AQ5D %in% c(1:42, 99))] <- NA
Nesarc_Data$S2AQ5D[Nesarc_Data$S2AQ5D == 99] <- NA

# Frequency of feeling downhearted or depressed in the past 4 weeks
Nesarc_Data$S1Q213[!(Nesarc_Data$S1Q213 %in% c(1:5, 9))] <- NA
Nesarc_Data$S1Q213[Nesarc_Data$S1Q213 == 9] <- NA

#Ever continue to drink even though made depressed, uninterested in things, suspicious or distrustful of other people
Nesarc_Data$S2BQ1A16[!(Nesarc_Data$S2BQ1A16 %in% c(1, 2, 9))] <- NA
Nesarc_Data$S2BQ1A16[Nesarc_Data$S2BQ1A16 == 9] <- NA

# Overall mental health functioning score 
Nesarc_Data$NBMCS[!(Nesarc_Data$NBMCS %in%  c(0:77 , 99))] <- NA
Nesarc_Data$NBMCS[Nesarc_Data$NBMCS == 99] <- NA

#Age
Nesarc_Data$AGE[!(Nesarc_Data$AGE %in% c(18:98))] <- NA

# Age at which they started drinking
Nesarc_Data$S2AQ16A[!(Nesarc_Data$S2AQ16A %in% c(5:83, 99))] <- NA
Nesarc_Data$S2AQ16A[Nesarc_Data$S2AQ16A == 99] <- NA

# Labeling 

# Alcohol use in the past 12 months 
Nesarc_Data$DRINK_PAST_YTD <- factor(
  Nesarc_Data$S2AQ3, 
  levels = c(1, 2), 
  labels = c("Yes", "No")
  )

# Frequency of alcohol consumption 
Nesarc_Data$DRINK_FREQ <- factor(
  Nesarc_Data$S2AQ5B,
  levels = c(1:10),
  labels = c(
    "Every Day",
    "Nearly Every Day",
    "3-4x a Week",
    "2x a Week",
    "1x a Week",
    "2-3x a Month",
    "1x a Month",
    "7-11x a Year",
    "3-6x a Year",
    "1-2x a Year"
    )
)

# Typical number of drinks on drinking days
Nesarc_Data$NUM_DRINKS <- Nesarc_Data$S2AQ5D

#Feeling downhearted or depressed in the past 4 weeks
Nesarc_Data$SAD_PAST_MTD <- factor(
  Nesarc_Data$S1Q213,
  levels = c(1:5), 
  labels = c(
    "All of the time",
    "Most of the time",
    "Some of the time",
    "A little of the time",
    "None of the time"
  )
)

# Ever continue to drink even though made depressed, uninterested in things, suspicious or distrustful of other people
Nesarc_Data$DRINK_DESPITE_MH <- factor(
  Nesarc_Data$S2BQ1A16, 
  levels = c(1, 2), 
  labels = c("Yes", "No")
)

# Overal mental health functioning score 
Nesarc_Data$MH_SCORE <- Nesarc_Data$NBMCS

#Nesarc_Data$AGE is an acceptable name

#Age at which they started drinking 
Nesarc_Data$START_AGE <- Nesarc_Data$S2AQ16A 

table(Nesarc_Data$DRANK_PAST_YEAR, useNA = "ifany")
table(Nesarc_Data$DRINK_FREQ, useNA = "ifany")
table(Nesarc_Data$DEPRESS_FREQ_4W, useNA = "ifany")
table(Nesarc_Data$DRINK_DESPITE_MH, useNA = "ifany")

summary(Nesarc_Data$NUM_DRINKS)
summary(Nesarc_Data$MH_SCORE)
summary(Nesarc_Data$AGE)
summary(Nesarc_Data$START_AGE)

View(Nesarc_Data)

