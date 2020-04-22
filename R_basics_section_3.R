library(dslabs)
library(dplyr)
data(heights)
options(digits = 3)
heights

#Section_3_Question_1
tall <- heights$height>mean(heights$height)
sum(tall)
 
#Section_3_Question_2
Female <- heights$sex=="Female"
sum(Female&tall)

#Section_3_Question_3
sum(Female)/nrow(heights)

#Section_3_Question_4a
min(heights$height)
#Section_3_Question_4b
min(heights$height)
mini <-match(min(heights$height),heights$height)
mini
#Section_3_Question_4c
heights$sex[mini]

#Section_3_Question_5a
max(heights$height)
maxi <- max(heights$height)
#Section_3_Question_5b
class(mini)
class(maxi)
x <- 50:82
#Section_3_Question_5c
sum(!x%in%heights$height)

#Section_3_Question_6
heights2 <- mutate(heights,ht_cm=height*2.54)

#Section_3_Question_6a
heights2$ht_cm[18]
#Section_3_Question_6b
mean(heights2$ht_cm)

#Section_3_Question_7
females <- (filter(heights2,sex=="Female",heights2$height,heights2$ht_cm))
females
#Section_3_Question_7a
nrow(females)
#Section_3_Question_7b
mean(females$ht_cm)

#Section_3_for_fun
males<- (filter(heights2,sex=="Male",heights2$height,heights2$ht_cm))
hist(females$ht_cm)
boxplot(females$ht_cm,males$ht_cm)

#Section_3_Question_8
library(dslabs)
data(olive)
head(olive)
plot(olive$palmitic,olive$palmitoleic)

#Section_3_Question_9
hist(olive$eicosenoic)

#Section_3_Question_9
boxplot(palmitic~region, data=olive)
