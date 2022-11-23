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

load(here("breslow.RData"))
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
  
## 2.1. 
  
For age group 45-54, complete the following sentences with numbers and proper
units (using \Sexpr in your Rnw document):

***
"

### a) The incidence rate among smokers was...

Ir_45smoker <- Ir_smokers[2]/1000 # person per year

### b) The incidence rate among nonsmokers was...

Ir_45Nonsmoker <- Ir_Nonsmokers[2]/1000 # person per year

### c) The incidence rate ratio was...

IRR_45 <- Ir_45smoker/Ir_45Nonsmoker # rate (don't know the units)

### d) The p-value of the Wald test to decide if the incidence rate among smokers is
#      the same than among nonsmokers was . . .

















