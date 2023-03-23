# DATA EXPLORATION

library(tidyverse)
library(dplyr)
library(ggplot2)

# Read data & get read of columns
segA <- read_csv("Documents/Bootcamp Materials/FPM/Resources/Static Data/YOY_1819_combined_csv.csv")
head(segA)

# delete duplicates
delete_dup <- segA %>% distinct()

# remove rows with NAN
cleaned <- delete_dup[-c(1:26), ]

# rename columns
colnames(cleaned) <- c("key","school", "grade-sub","mastery","baseyr","compyr", "state", "region", "district", "afriamer","hisp", "white", "edisadv", "ell")
myData19 <- cleaned
print(myData19)

# find district average (0.00849)
distavg <- mean(myData$district)
print(distavg)

# find state average (0.01276)
stavg <- mean(myData$state19)
print(stavg)

# T-TESTING
## Hypothesis: avg score among all african american students equal to the district avg (.008490483)
t.test(myData$`afriamer19`, mu = 0.008490483)
### results: p = .26 null hypothesis can not be rejected; True

## white students
t.test(myData$`white19`, mu = 0.008490483)
### results: p = .017 null hypothesis is rejected; False

## Null: avg scores = avg state scores
t.test(myData$`afriamer19`, mu = 0.01276)
## results: p = .02; african american scores are significantly different from the state scores

t.test(myData$`white19`, mu = 0.01276)
## results: p = .39

## ELL scores are equal to the state between 18-19
t.test(myData19$ell, mu = 0.01276)
## results: p -value = 5.676e-05; we reject the null hypothesis

## ELL scores are equal to the state between 21-22
t.test(myData22$ell, mu = 0.01276)
## results: p-value = 2.2e-16; we reject the null hypothesis


# Box plot TESTING
## load and install packages
install.packages("ggpubr")
library(ggpubr)
library(rstatix)

## gather t-test summary
stat.test <- myData %>% t_test(white19 ~ 1, mu = 0.01276)
stat.test

## Create the box-plot
bxp <- ggboxplot(
  myData$white19, width = 0.01, add = c("mean", "jitter"), 
  ylab = "Scores", xlab = FALSE
)
## Add significance levels
bxp + labs(subtitle = get_test_label(stat.test, detailed = TRUE))


### Another version
ggboxplot(myData$white19, 
          ylab = "Scores", xlab = FALSE,
          ggtheme = theme_minimal())


# Density Plot
ggdensity(myData, x = "white19", rug = TRUE, fill = "lightgray") +
  scale_x_continuous(limits = c(-0.2, 0.3)) +
  stat_central_tendency(type = "mean", color = "red", linetype = "dashed") +
  geom_vline(xintercept = 0.01276, color = "blue", linetype = "dashed") + 
  labs(subtitle = get_test_label(stat.test,  detailed = TRUE))


