#Sample R program

library('tidyverse')
dt <- read_csv("EmployeeData.csv")
unique(dt$frequency)
dt1 <- dt %>% mutate( AnnualBaseSalary=ifelse(frequency=="HOURLY",base*40*52,base*5*52),
                      AnnualTotalCompensation=ifelse(frequency=="HOURLY",total*40*52,total*5*52),
                      AnnualBonus=AnnualTotalCompensation-AnnualBaseSalary
  
)
View(dt1)

dt17 <- dt1 %>% filter(year==2017)
dt16 <- dt1 %>% filter(year==2016)
