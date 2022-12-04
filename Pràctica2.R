"
##### Statistics in Health Sciences
### Pràctica 2
"

"
***
### Library importation and data load
***
"

library(here)
library(epitools)

#path_sergi <- 'D:\\sergi\\UNIVERSITAT\\4 - Quart curs\\Primer semestre\\bAnalisi de dades en ciencies de la salut\\Practica2_ACS\\breslow.RData'
setwd(here())
load('breslow.RData')
Data <- breslow
Data


"
*****
## 2. Comparing incidence rates
*****
"
"
***
## 2.1. 
Creation of the columns I_r for smokers and non smokers and IRR
***
"

### a) I_r
Ir_smokers <- Data$deaths[Data$smoker=='yes']/Data$personYears[Data$smoker=='yes']*1000
Ir_Nonsmokers <- Data$deaths[Data$smoker=='no']/Data$personYears[Data$smoker=='no']*1000

### b) IRR
IRR <- Ir_smokers/Ir_Nonsmokers

"
***
  
## 2.2. 
  
For age group 45-54, complete the following sentences with numbers and proper
units (using \ Sexpr in your Rnw document):
***
"

### a) The incidence rate among smokers was...

Ir_45smoker <- Ir_smokers[2]/1000 # person per year

### b) The incidence rate among nonsmokers was...

Ir_45Nonsmoker <- Ir_Nonsmokers[2]/1000 # person per year

### c) The incidence rate ratio was...

IRR_45 <- Ir_45smoker/Ir_45Nonsmoker # rate (no units, since it's a dimensionless magnitude)

### d) The p-value of the Wald test to decide if the incidence rate among smokers is
#      the same than among nonsmokers was . . .
Data45 <- Data[Data$age=="45-54",]
pValue45 <- rateratio.wald(x=Data45$deaths,y=Data45$personYears,)$p.value[2,"wald"]



"
***
## 2.3. 
  
For age group 75-84, complete the following sentences with numbers and proper
units (using \ Sexpr in your Rnw document):
***
"
### a) The incidence rate among smokers was...

Ir_75smoker <- Ir_smokers[5]/1000 # person per year

### b) The incidence rate among nonsmokers was...

Ir_75Nonsmoker <- Ir_Nonsmokers[5]/1000 # person per year

### c) The incidence rate ratio was...

IRR_75 <- Ir_75smoker/Ir_75Nonsmoker # rate (no units, since it is dimensionless)

### d) The p-value of the Wald test to decide if the incidence rate among smokers is
#      the same than among nonsmokers was . . .
Data75 <- Data[Data$age=="75-84",]
pValue75 <- rateratio.wald(x=Data75$deaths,y=Data75$personYears,)$p.value[2,"wald"]


## 2.4.
par(mfrow = c(1, 2))

plot(IRR, xaxt = 'n', xlab = 'Age groups', ylab = 'Incidence rate ratios')
axis(1, at = seq(1, 5), labels = c('35-44', '45-54', '55-64', '65-74', '75-84'))


plot(log = 'y', IRR, xaxt = 'n', xlab = 'Age groups', ylab = 'Incidence rate ratios')
axis(1, at = seq(1, 5), labels = c('35-44', '45-54', '55-64', '65-74', '75-84'))
  

