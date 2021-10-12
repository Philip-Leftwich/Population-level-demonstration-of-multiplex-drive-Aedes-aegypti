
library(DescTools)
library(lme4)
library(tidyverse)
library(emmeans)

## Gtest goodness of fit. 




total=c((77+245+59+48), ((113+318+110+82)-(77+245+59+48)))
total_mosaic=c((77+245), ((113+318)-(77+245)))
total_wt=c((59+48),(110+82)-((59+48)))
total_male=c((77+59),((113+110)-(77+59)))
total_female=c((245+48), ((318+82)-(245+48)))
female_mosaic=c(245,(318-245))
male_mosaic=c(77,(113-77))
male_wt=c(59,(110-59))
female_wt=c(48,(82-48))


expected=c(0.5,0.5)
GTest(x=observed, p=expected)


goodness <- list(total, total_mosaic, total_wt, total_male, total_female, female_mosaic, male_mosaic, male_wt, female_wt)
names(goodness) <- c("total", "total_mosaic", "total_wt", "total_male", "total_female", "female_mosaic", "male_mosaic", "male_wt", "female_wt")


map(.x=goodness, .f= ~ GTest(x=.x, p=c(0.5,0.5)))


### GTest of heterogeneity

heterogeneity <- list((
  matrix(c(male_wt, female_wt, male_mosaic, female_mosaic), ncol=2, byrow=TRUE)),
  (matrix(c(male_wt, female_wt), ncol=2, byrow=TRUE)),
  (matrix(c(male_mosaic, female_mosaic), ncol=2, byrow=TRUE))
)
names(heterogeneity) <- c("total", "wt", "mosaic")

map(.x=heterogeneity, .f= ~ GTest(x=.x))


### Generalised Linear Mixed Model with 'logit' link

model_run <- function(data,y, x){
  model <- glmer(y~x+(1|Cross/Replicate), family=binomial, data=data)
  means <- emmeans::emmeans(model, specs=pairwise~x, type="response")
  newList <- list("model"=model, "means"=means)
  return(newList)
}