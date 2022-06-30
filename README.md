# NYC-COVID-Update-

Following the following steps:

## STEP #1: Data Download in R:

a. In R: Run the web scrapping script to downlaod and safe the 3 datasets we need from DOHMH's GitHub

2. In R: Load 'modzcta' data and change variables names. 

a. Remove Covid from beginning of variable name so that they match variable names in 'group' data.
This is useful down the line in Tableau, when we create parameter and calculated fields for use in both datasets.

b. Change column name from 

## STEP #2: Data cleaning in Tableau Prep

In this project, I do all the data wrangling in Tableau Prep. While all cleaning here can be easily in other programs (including R, Python, Excel, etc.), I used Tableau Prep since it is easier for those who do not know R or python. However, if you do not have Tableau or find other programs easier to use, you should be able to easily replicate all the steps there.

a. Connect the 'daily.csv' file to Tableau Prep and use the flow 'Daily Cleaning Flow' to clean it. 
The steps in the flow deletes some unwanted columns and pivots the data.
Prep will save the output as 'Daily_PrepOutput.csv', which is what will be used for analyses.

b. Connect the 'modzcta.csv' file and use the flow 'modzcta cleaning flow' to clean it.
The steps in the flow remove the word 'COVID' from beginning of the names of a number of variables. This will ensure that they match the variable names in 'group' data.
This is useful down the line in Tableau, when we create parameter and calculated fields for use in both datasets.

c. Connect the 'group.csv' file and use the 'group cleaning flow' to clean.
The steps in the flow breaks up the 'subgroup' variable into the various components. It creates new variables for 'Race/Ethnicity', 'Borough', 'Age', 'Sex' and 'Poverty'. These new variables will be used to in a parameter to filter some charts.