library(tidyverse)
library(magrittr)
library(readxl)
library(writexl)
library(openxlsx)
library(reshape2)
library(lubridate)
library(gt)

###### Reading Planner Category ###### 


Planner_Category <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/Planner Category.xlsx")

names(Planner_Category) <- str_replace_all(names(Planner_Category), c(" " = "_"))




###### Reading PO Data ###### 

# 10.01.2021 ----

X10_01_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.01.21.xlsx", 
                         sheet = "Daily Open PO")


names(X10_01_2021) <- str_replace_all(names(X10_01_2021), c(" " = "_"))


merge(X10_01_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_01_2021


X10_01_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10012021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10012021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10012021))) 


X10_01_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_01_2021


Y10_01_2021 %<>%
  dplyr::filter(complete.cases(Y10_01_2021))



# 10.04.2021 ----

X10_04_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.04.21.xlsx", 
                         sheet = "Daily Open PO")


names(X10_04_2021) <- str_replace_all(names(X10_04_2021), c(" " = "_"))


merge(X10_04_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_04_2021


X10_04_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10042021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10042021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10042021))) 


X10_04_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_04_2021


Y10_04_2021 %<>%
  dplyr::filter(complete.cases(Y10_04_2021))


# 10.05.2021 ----

X10_05_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.05.21.xlsx", 
                         sheet = "Daily Open PO")


names(X10_05_2021) <- str_replace_all(names(X10_05_2021), c(" " = "_"))


merge(X10_05_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_05_2021


X10_05_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10052021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10052021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10052021))) 


X10_05_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_05_2021


Y10_05_2021 %<>%
  dplyr::filter(complete.cases(Y10_05_2021))



# 10.06.2021 ----

X10_06_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.06.21.xlsx", 
                         sheet = "Daily Open PO")


names(X10_06_2021) <- str_replace_all(names(X10_06_2021), c(" " = "_"))


merge(X10_06_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_06_2021


X10_06_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10062021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10062021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10062021))) 


X10_06_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_06_2021


Y10_06_2021 %<>%
  dplyr::filter(complete.cases(Y10_06_2021))


# 10.07.2021 ----

X10_07_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.07.21.xlsx", 
                         sheet = "Daily Open PO")


names(X10_07_2021) <- str_replace_all(names(X10_07_2021), c(" " = "_"))


merge(X10_07_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_07_2021


X10_07_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10072021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10072021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10072021))) 


X10_07_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_07_2021


Y10_07_2021 %<>%
  dplyr::filter(complete.cases(Y10_07_2021))


# 10.08.2021 ----

X10_08_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.08.21.xlsx", 
                         sheet = "Daily Open PO")


names(X10_08_2021) <- str_replace_all(names(X10_08_2021), c(" " = "_"))


merge(X10_08_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_08_2021


X10_08_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10082021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10082021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10082021))) 


X10_08_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_08_2021


Y10_08_2021 %<>%
  dplyr::filter(complete.cases(Y10_08_2021))



# 10.11.2021 ----

X10_11_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.11.21.xlsx", 
                         sheet = "Daily Open PO")


names(X10_11_2021) <- str_replace_all(names(X10_11_2021), c(" " = "_"))


merge(X10_11_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_11_2021


X10_11_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10112021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10112021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10112021))) 


X10_11_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_11_2021


Y10_11_2021 %<>%
  dplyr::filter(complete.cases(Y10_11_2021))


# 10.12.2021 ----

X10_12_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.12.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_12_2021) <- str_replace_all(names(X10_12_2021), c(" " = "_"))


merge(X10_12_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_12_2021


X10_12_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10122021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10122021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10122021))) 


X10_12_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_12_2021


Y10_12_2021 %<>%
  dplyr::filter(complete.cases(Y10_12_2021))



# 10.13.2021 ----

X10_13_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.13.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_13_2021) <- str_replace_all(names(X10_13_2021), c(" " = "_"))


merge(X10_13_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_13_2021


X10_13_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10132021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10132021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10132021))) 


X10_13_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_13_2021


Y10_13_2021 %<>%
  dplyr::filter(complete.cases(Y10_13_2021))



# 10.14.2021 ----

X10_14_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.14.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_14_2021) <- str_replace_all(names(X10_14_2021), c(" " = "_"))


merge(X10_14_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_14_2021


X10_14_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10142021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10142021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10142021))) 


X10_14_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_14_2021


Y10_14_2021 %<>%
  dplyr::filter(complete.cases(Y10_14_2021))


# 10.15.2021 ----

X10_15_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.15.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_15_2021) <- str_replace_all(names(X10_15_2021), c(" " = "_"))


merge(X10_15_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_15_2021


X10_15_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10152021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10152021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10152021))) 


X10_15_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_15_2021


Y10_15_2021 %<>%
  dplyr::filter(complete.cases(Y10_15_2021))



# 10.18.2021 ----

X10_18_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.18.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_18_2021) <- str_replace_all(names(X10_18_2021), c(" " = "_"))


merge(X10_18_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_18_2021


X10_18_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10182021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10182021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10182021))) 


X10_18_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_18_2021


Y10_18_2021 %<>%
  dplyr::filter(complete.cases(Y10_18_2021))



# 10.19.2021 ----

X10_19_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.19.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_19_2021) <- str_replace_all(names(X10_19_2021), c(" " = "_"))


merge(X10_19_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_19_2021


X10_19_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10192021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10192021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10192021))) 


X10_19_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_19_2021


Y10_19_2021 %<>%
  dplyr::filter(complete.cases(Y10_19_2021))




# 10.20.2021 ----

X10_20_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.20.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_20_2021) <- str_replace_all(names(X10_20_2021), c(" " = "_"))


merge(X10_20_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_20_2021


X10_20_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10202021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10202021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10202021))) 


X10_20_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_20_2021


Y10_20_2021 %<>%
  dplyr::filter(complete.cases(Y10_20_2021))


# 10.21.2021 ----

X10_21_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.21.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_21_2021) <- str_replace_all(names(X10_21_2021), c(" " = "_"))


merge(X10_21_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_21_2021


X10_21_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10212021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10212021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10212021))) 


X10_21_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_21_2021


Y10_21_2021 %<>%
  dplyr::filter(complete.cases(Y10_21_2021))


# 10.22.2021 ----

X10_22_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.22.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_22_2021) <- str_replace_all(names(X10_22_2021), c(" " = "_"))


merge(X10_22_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_22_2021


X10_22_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10222021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10222021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10222021))) 


X10_22_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_22_2021


Y10_22_2021 %<>%
  dplyr::filter(complete.cases(Y10_22_2021))


# 10.25.2021 ----

X10_25_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.25.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_25_2021) <- str_replace_all(names(X10_25_2021), c(" " = "_"))


merge(X10_25_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_25_2021


X10_25_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10252021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10252021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10252021))) 


X10_25_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_25_2021


Y10_25_2021 %<>%
  dplyr::filter(complete.cases(Y10_25_2021))



# 10.26.2021 ----

X10_26_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.26.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_26_2021) <- str_replace_all(names(X10_26_2021), c(" " = "_"))


merge(X10_26_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_26_2021


X10_26_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10262021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10262021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10262021))) 


X10_26_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_26_2021


Y10_26_2021 %<>%
  dplyr::filter(complete.cases(Y10_26_2021))



# 10.27.2021 ----

X10_27_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.27.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_27_2021) <- str_replace_all(names(X10_27_2021), c(" " = "_"))


merge(X10_27_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_27_2021


X10_27_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10272021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10272021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10272021))) 


X10_27_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_27_2021


Y10_27_2021 %<>%
  dplyr::filter(complete.cases(Y10_27_2021))



# 10.28.2021 ----

X10_28_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.28.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_28_2021) <- str_replace_all(names(X10_28_2021), c(" " = "_"))


merge(X10_28_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_28_2021


X10_28_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10282021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10282021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10282021))) 


X10_28_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_28_2021


Y10_28_2021 %<>%
  dplyr::filter(complete.cases(Y10_28_2021))



# 10.29.2021 ----

X10_29_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 10.29.21.xlsx", 
                          sheet = "Daily Open PO")


names(X10_29_2021) <- str_replace_all(names(X10_29_2021), c(" " = "_"))


merge(X10_29_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X10_29_2021


X10_29_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(10292021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(10292021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(10292021))) 


X10_29_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y10_29_2021


Y10_29_2021 %<>%
  dplyr::filter(complete.cases(Y10_29_2021))


# 11.01.2021 ----

X11_01_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.01.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_01_2021) <- str_replace_all(names(X11_01_2021), c(" " = "_"))


merge(X11_01_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_01_2021


X11_01_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11012021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11012021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11012021))) 


X11_01_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_01_2021


Y11_01_2021 %<>%
  dplyr::filter(complete.cases(Y11_01_2021))



# 11.02.2021 ----

X11_02_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.02.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_02_2021) <- str_replace_all(names(X11_02_2021), c(" " = "_"))


merge(X11_02_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_02_2021


X11_02_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11022021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11022021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11022021))) 


X11_02_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_02_2021


Y11_02_2021 %<>%
  dplyr::filter(complete.cases(Y11_02_2021))



# 11.03.2021 ----

X11_03_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.03.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_03_2021) <- str_replace_all(names(X11_03_2021), c(" " = "_"))


merge(X11_03_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_03_2021


X11_03_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11032021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11032021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11032021))) 


X11_03_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_03_2021


Y11_03_2021 %<>%
  dplyr::filter(complete.cases(Y11_03_2021))



# 11.04.2021 ----

X11_04_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.04.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_04_2021) <- str_replace_all(names(X11_04_2021), c(" " = "_"))


merge(X11_04_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_04_2021


X11_04_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11042021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11042021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11042021))) 


X11_04_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_04_2021


Y11_04_2021 %<>%
  dplyr::filter(complete.cases(Y11_04_2021))




# 11.05.2021 ----

X11_05_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.05.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_05_2021) <- str_replace_all(names(X11_05_2021), c(" " = "_"))


merge(X11_05_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_05_2021


X11_05_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11052021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11052021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11052021))) 


X11_05_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_05_2021


Y11_05_2021 %<>%
  dplyr::filter(complete.cases(Y11_05_2021))





# 11.08.2021 ----

X11_08_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.08.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_08_2021) <- str_replace_all(names(X11_08_2021), c(" " = "_"))


merge(X11_08_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_08_2021


X11_08_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11082021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11082021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11082021))) 


X11_08_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_08_2021


Y11_08_2021 %<>%
  dplyr::filter(complete.cases(Y11_08_2021))



# 11.09.2021 ----

X11_09_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.09.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_09_2021) <- str_replace_all(names(X11_09_2021), c(" " = "_"))


merge(X11_09_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_09_2021


X11_09_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11092021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11092021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11092021))) 


X11_09_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_09_2021


Y11_09_2021 %<>%
  dplyr::filter(complete.cases(Y11_09_2021))



# 11.10.2021 ----

X11_10_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.10.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_10_2021) <- str_replace_all(names(X11_10_2021), c(" " = "_"))


merge(X11_10_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_10_2021


X11_10_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11102021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11102021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11102021))) 


X11_10_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_10_2021


Y11_10_2021 %<>%
  dplyr::filter(complete.cases(Y11_10_2021))



# 11.11.2021 ----

X11_11_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.11.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_11_2021) <- str_replace_all(names(X11_11_2021), c(" " = "_"))


merge(X11_11_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_11_2021


X11_11_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11112021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11112021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11112021))) 


X11_11_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_11_2021


Y11_11_2021 %<>%
  dplyr::filter(complete.cases(Y11_11_2021))




# 11.12.2021 ----

X11_12_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.12.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_12_2021) <- str_replace_all(names(X11_12_2021), c(" " = "_"))


merge(X11_12_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_12_2021


X11_12_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11122021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11122021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11122021))) 


X11_12_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_12_2021


Y11_12_2021 %<>%
  dplyr::filter(complete.cases(Y11_12_2021))




# 11.15.2021 ----

X11_15_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.15.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_15_2021) <- str_replace_all(names(X11_15_2021), c(" " = "_"))


merge(X11_15_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_15_2021


X11_15_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11152021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11152021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11152021))) 


X11_15_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_15_2021


Y11_15_2021 %<>%
  dplyr::filter(complete.cases(Y11_15_2021))



# 11.16.2021 ----

X11_16_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.16.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_16_2021) <- str_replace_all(names(X11_16_2021), c(" " = "_"))


merge(X11_16_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_16_2021


X11_16_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11162021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11162021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11162021))) 


X11_16_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_16_2021


Y11_16_2021 %<>%
  dplyr::filter(complete.cases(Y11_16_2021))



# 11.17.2021 ----

X11_17_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.17.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_17_2021) <- str_replace_all(names(X11_17_2021), c(" " = "_"))


merge(X11_17_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_17_2021


X11_17_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11172021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11172021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11172021))) 


X11_17_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_17_2021


Y11_17_2021 %<>%
  dplyr::filter(complete.cases(Y11_17_2021))



# 11.18.2021 ----

X11_18_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.18.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_18_2021) <- str_replace_all(names(X11_18_2021), c(" " = "_"))


merge(X11_18_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_18_2021


X11_18_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11182021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11182021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11182021))) 


X11_18_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_18_2021


Y11_18_2021 %<>%
  dplyr::filter(complete.cases(Y11_18_2021))



# 11.19.2021 ----

X11_19_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.19.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_19_2021) <- str_replace_all(names(X11_19_2021), c(" " = "_"))


merge(X11_19_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_19_2021


X11_19_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11192021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11192021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11192021))) 


X11_19_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_19_2021


Y11_19_2021 %<>%
  dplyr::filter(complete.cases(Y11_19_2021))




# 11.22.2021 ----

X11_22_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.22.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_22_2021) <- str_replace_all(names(X11_22_2021), c(" " = "_"))


merge(X11_22_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_22_2021


X11_22_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11222021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11222021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11222021))) 


X11_22_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_22_2021


Y11_22_2021 %<>%
  dplyr::filter(complete.cases(Y11_22_2021))




# 11.23.2021 ----

X11_23_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.23.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_23_2021) <- str_replace_all(names(X11_23_2021), c(" " = "_"))


merge(X11_23_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_23_2021


X11_23_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11232021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11232021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11232021))) 


X11_23_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_23_2021


Y11_23_2021 %<>%
  dplyr::filter(complete.cases(Y11_23_2021))



# 11.24.2021 ----

X11_24_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.24.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_24_2021) <- str_replace_all(names(X11_24_2021), c(" " = "_"))


merge(X11_24_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_24_2021


X11_24_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11242021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11242021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11242021))) 


X11_24_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_24_2021


Y11_24_2021 %<>%
  dplyr::filter(complete.cases(Y11_24_2021))





# 11.29.2021 ----

X11_29_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.29.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_29_2021) <- str_replace_all(names(X11_29_2021), c(" " = "_"))


merge(X11_29_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_29_2021


X11_29_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11292021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11292021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11292021))) 


X11_29_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_29_2021


Y11_29_2021 %<>%
  dplyr::filter(complete.cases(Y11_29_2021))




# 11.30.2021 ----

X11_30_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 11.30.21.xlsx", 
                          sheet = "Daily Open PO")


names(X11_30_2021) <- str_replace_all(names(X11_30_2021), c(" " = "_"))


merge(X11_30_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X11_30_2021


X11_30_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(11302021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(11302021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(11302021))) 


X11_30_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y11_30_2021


Y11_30_2021 %<>%
  dplyr::filter(complete.cases(Y11_30_2021))




# 12.01.2021 ----

X12_01_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.01.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_01_2021) <- str_replace_all(names(X12_01_2021), c(" " = "_"))


merge(X12_01_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_01_2021


X12_01_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12012021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12012021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12012021))) 


X12_01_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_01_2021


Y12_01_2021 %<>%
  dplyr::filter(complete.cases(Y12_01_2021))


# 12.02.2021 ----

X12_02_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.02.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_02_2021) <- str_replace_all(names(X12_02_2021), c(" " = "_"))


merge(X12_02_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_02_2021


X12_02_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12022021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12022021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12022021))) 


X12_02_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_02_2021


Y12_02_2021 %<>%
  dplyr::filter(complete.cases(Y12_02_2021))



# 12.03.2021 ----

X12_03_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.03.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_03_2021) <- str_replace_all(names(X12_03_2021), c(" " = "_"))


merge(X12_03_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_03_2021


X12_03_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12032021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12032021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12032021))) 


X12_03_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_03_2021


Y12_03_2021 %<>%
  dplyr::filter(complete.cases(Y12_03_2021))




# 12.06.2021 ----

X12_06_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.06.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_06_2021) <- str_replace_all(names(X12_06_2021), c(" " = "_"))


merge(X12_06_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_06_2021


X12_06_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12062021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12062021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12062021))) 


X12_06_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_06_2021


Y12_06_2021 %<>%
  dplyr::filter(complete.cases(Y12_06_2021))




# 12.07.2021 ----

X12_07_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.07.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_07_2021) <- str_replace_all(names(X12_07_2021), c(" " = "_"))


merge(X12_07_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_07_2021


X12_07_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12072021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12072021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12072021))) 


X12_07_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_07_2021


Y12_07_2021 %<>%
  dplyr::filter(complete.cases(Y12_07_2021))



# 12.08.2021 ----

X12_08_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.08.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_08_2021) <- str_replace_all(names(X12_08_2021), c(" " = "_"))


merge(X12_08_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_08_2021


X12_08_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12082021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12082021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12082021))) 


X12_08_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_08_2021


Y12_08_2021 %<>%
  dplyr::filter(complete.cases(Y12_08_2021))



# 12.09.2021 ----

X12_09_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.09.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_09_2021) <- str_replace_all(names(X12_09_2021), c(" " = "_"))


merge(X12_09_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_09_2021


X12_09_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12092021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12092021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12092021))) 


X12_09_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_09_2021


Y12_09_2021 %<>%
  dplyr::filter(complete.cases(Y12_09_2021))



# 12.10.2021 ----

X12_10_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.10.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_10_2021) <- str_replace_all(names(X12_10_2021), c(" " = "_"))


merge(X12_10_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_10_2021


X12_10_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12102021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12102021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12102021))) 


X12_10_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_10_2021


Y12_10_2021 %<>%
  dplyr::filter(complete.cases(Y12_10_2021))



# 12.13.2021 ----

X12_13_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.13.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_13_2021) <- str_replace_all(names(X12_13_2021), c(" " = "_"))


merge(X12_13_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_13_2021


X12_13_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12132021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12132021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12132021))) 


X12_13_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_13_2021


Y12_13_2021 %<>%
  dplyr::filter(complete.cases(Y12_13_2021))




# 12.14.2021 ----

X12_14_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.14.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_14_2021) <- str_replace_all(names(X12_14_2021), c(" " = "_"))


merge(X12_14_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_14_2021


X12_14_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12142021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12142021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12142021))) 


X12_14_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_14_2021


Y12_14_2021 %<>%
  dplyr::filter(complete.cases(Y12_14_2021))




# 12.15.2021 ----

X12_15_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.15.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_15_2021) <- str_replace_all(names(X12_15_2021), c(" " = "_"))


merge(X12_15_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_15_2021


X12_15_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12152021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12152021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12152021))) 


X12_15_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_15_2021


Y12_15_2021 %<>%
  dplyr::filter(complete.cases(Y12_15_2021))



# 12.16.2021 ----

X12_16_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.16.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_16_2021) <- str_replace_all(names(X12_16_2021), c(" " = "_"))


merge(X12_16_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_16_2021


X12_16_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12162021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12162021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12162021))) 


X12_16_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_16_2021


Y12_16_2021 %<>%
  dplyr::filter(complete.cases(Y12_16_2021))




# 12.17.2021 ----

X12_17_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.17.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_17_2021) <- str_replace_all(names(X12_17_2021), c(" " = "_"))


merge(X12_17_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_17_2021


X12_17_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12172021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12172021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12172021))) 


X12_17_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_17_2021


Y12_17_2021 %<>%
  dplyr::filter(complete.cases(Y12_17_2021))



# 12.20.2021 ----

X12_20_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.20.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_20_2021) <- str_replace_all(names(X12_20_2021), c(" " = "_"))


merge(X12_20_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_20_2021


X12_20_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12202021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12202021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12202021))) 


X12_20_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_20_2021


Y12_20_2021 %<>%
  dplyr::filter(complete.cases(Y12_20_2021))



# 12.21.2021 ----

X12_21_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.21.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_21_2021) <- str_replace_all(names(X12_21_2021), c(" " = "_"))


merge(X12_21_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_21_2021


X12_21_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12212021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12212021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12212021))) 


X12_21_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_21_2021


Y12_21_2021 %<>%
  dplyr::filter(complete.cases(Y12_21_2021))



# 12.22.2021 ----

X12_22_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.22.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_22_2021) <- str_replace_all(names(X12_22_2021), c(" " = "_"))


merge(X12_22_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_22_2021


X12_22_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12222021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12222021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12222021))) 


X12_22_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_22_2021


Y12_22_2021 %<>%
  dplyr::filter(complete.cases(Y12_22_2021))



# 12.23.2021 ----

X12_23_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.23.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_23_2021) <- str_replace_all(names(X12_23_2021), c(" " = "_"))


merge(X12_23_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_23_2021


X12_23_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12232021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12232021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12232021))) 


X12_23_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_23_2021


Y12_23_2021 %<>%
  dplyr::filter(complete.cases(Y12_23_2021))



# 12.28.2021 ----

X12_28_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.28.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_28_2021) <- str_replace_all(names(X12_28_2021), c(" " = "_"))


merge(X12_28_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_28_2021


X12_28_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12282021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12282021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12282021))) 


X12_28_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_28_2021


Y12_28_2021 %<>%
  dplyr::filter(complete.cases(Y12_28_2021))



# 12.29.2021 ----

X12_29_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.29.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_29_2021) <- str_replace_all(names(X12_29_2021), c(" " = "_"))


merge(X12_29_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_29_2021


X12_29_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12292021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12292021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12292021))) 


X12_29_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_29_2021


Y12_29_2021 %<>%
  dplyr::filter(complete.cases(Y12_29_2021))



# 12.30.2021 ----

X12_30_2021 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 12.30.21.xlsx", 
                          sheet = "Daily Open PO")


names(X12_30_2021) <- str_replace_all(names(X12_30_2021), c(" " = "_"))


merge(X12_30_2021, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X12_30_2021


X12_30_2021 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(12302021))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(12302021))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(12302021))) 


X12_30_2021 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y12_30_2021


Y12_30_2021 %<>%
  dplyr::filter(complete.cases(Y12_30_2021))





# 01.03.2022 ----

X01_03_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.03.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_03_2022) <- str_replace_all(names(X01_03_2022), c(" " = "_"))


merge(X01_03_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_03_2022


X01_03_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01032022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01032022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01032022))) 


X01_03_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_03_2022


Y01_03_2022 %<>%
  dplyr::filter(complete.cases(Y01_03_2022))




# 01.04.2022 ----

X01_04_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.04.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_04_2022) <- str_replace_all(names(X01_04_2022), c(" " = "_"))


merge(X01_04_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_04_2022


X01_04_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01042022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01042022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01042022))) 


X01_04_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_04_2022


Y01_04_2022 %<>%
  dplyr::filter(complete.cases(Y01_04_2022))





# 01.05.2022 ----

X01_05_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.05.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_05_2022) <- str_replace_all(names(X01_05_2022), c(" " = "_"))


merge(X01_05_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_05_2022


X01_05_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01052022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01052022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01052022))) 


X01_05_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_05_2022


Y01_05_2022 %<>%
  dplyr::filter(complete.cases(Y01_05_2022))



# 01.06.2022 ----

X01_06_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.06.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_06_2022) <- str_replace_all(names(X01_06_2022), c(" " = "_"))


merge(X01_06_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_06_2022


X01_06_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01062022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01062022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01062022))) 


X01_06_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_06_2022


Y01_06_2022 %<>%
  dplyr::filter(complete.cases(Y01_06_2022))


# 01.07.2022 ----

X01_07_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.07.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_07_2022) <- str_replace_all(names(X01_07_2022), c(" " = "_"))


merge(X01_07_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_07_2022


X01_07_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01072022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01072022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01072022))) 


X01_07_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_07_2022


Y01_07_2022 %<>%
  dplyr::filter(complete.cases(Y01_07_2022))


# 01.10.2022 ----

X01_10_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.10.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_10_2022) <- str_replace_all(names(X01_10_2022), c(" " = "_"))


merge(X01_10_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_10_2022


X01_10_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01102022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01102022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01102022))) 


X01_10_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_10_2022


Y01_10_2022 %<>%
  dplyr::filter(complete.cases(Y01_10_2022))



# 01.11.2022 ----

X01_11_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.11.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_11_2022) <- str_replace_all(names(X01_11_2022), c(" " = "_"))


merge(X01_11_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_11_2022


X01_11_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01112022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01112022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01112022))) 


X01_11_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_11_2022


Y01_11_2022 %<>%
  dplyr::filter(complete.cases(Y01_11_2022))



# 01.12.2022 ----

X01_12_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.12.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_12_2022) <- str_replace_all(names(X01_12_2022), c(" " = "_"))


merge(X01_12_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_12_2022


X01_12_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01122022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01122022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01122022))) 


X01_12_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_12_2022


Y01_12_2022 %<>%
  dplyr::filter(complete.cases(Y01_12_2022))



# 01.13.2022 ----

X01_13_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.13.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_13_2022) <- str_replace_all(names(X01_13_2022), c(" " = "_"))


merge(X01_13_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_13_2022


X01_13_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01132022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01132022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01132022))) 


X01_13_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_13_2022


Y01_13_2022 %<>%
  dplyr::filter(complete.cases(Y01_13_2022))



# 01.14.2022 ----

X01_14_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.14.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_14_2022) <- str_replace_all(names(X01_14_2022), c(" " = "_"))


merge(X01_14_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_14_2022


X01_14_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01142022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01142022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01142022))) 


X01_14_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_14_2022


Y01_14_2022 %<>%
  dplyr::filter(complete.cases(Y01_14_2022))




# 01.17.2022 ----

X01_17_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.17.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_17_2022) <- str_replace_all(names(X01_17_2022), c(" " = "_"))


merge(X01_17_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_17_2022


X01_17_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01172022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01172022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01172022))) 


X01_17_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_17_2022


Y01_17_2022 %<>%
  dplyr::filter(complete.cases(Y01_17_2022))


# 01.18.2022 ----

X01_18_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.18.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_18_2022) <- str_replace_all(names(X01_18_2022), c(" " = "_"))


merge(X01_18_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_18_2022


X01_18_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01182022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01182022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01182022))) 


X01_18_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_18_2022


Y01_18_2022 %<>%
  dplyr::filter(complete.cases(Y01_18_2022))



# 01.19.2022 ----

X01_19_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.19.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_19_2022) <- str_replace_all(names(X01_19_2022), c(" " = "_"))


merge(X01_19_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_19_2022


X01_19_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01192022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01192022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01192022))) 


X01_19_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_19_2022


Y01_19_2022 %<>%
  dplyr::filter(complete.cases(Y01_19_2022))


# 01.20.2022 ----

X01_20_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.20.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_20_2022) <- str_replace_all(names(X01_20_2022), c(" " = "_"))


merge(X01_20_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_20_2022


X01_20_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01202022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01202022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01202022))) 


X01_20_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_20_2022


Y01_20_2022 %<>%
  dplyr::filter(complete.cases(Y01_20_2022))


# 01.21.2022 ----

X01_21_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.21.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_21_2022) <- str_replace_all(names(X01_21_2022), c(" " = "_"))


merge(X01_21_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_21_2022


X01_21_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01212022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01212022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01212022))) 


X01_21_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_21_2022


Y01_21_2022 %<>%
  dplyr::filter(complete.cases(Y01_21_2022))


# 01.24.2022 ----

X01_24_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.24.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_24_2022) <- str_replace_all(names(X01_24_2022), c(" " = "_"))


merge(X01_24_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_24_2022


X01_24_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01242022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01242022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01242022))) 


X01_24_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_24_2022


Y01_24_2022 %<>%
  dplyr::filter(complete.cases(Y01_24_2022))



# 01.25.2022 ----

X01_25_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.25.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_25_2022) <- str_replace_all(names(X01_25_2022), c(" " = "_"))


merge(X01_25_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_25_2022


X01_25_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01252022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01252022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01252022))) 


X01_25_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_25_2022


Y01_25_2022 %<>%
  dplyr::filter(complete.cases(Y01_25_2022))



# 01.26.2022 ----

X01_26_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.26.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_26_2022) <- str_replace_all(names(X01_26_2022), c(" " = "_"))


merge(X01_26_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_26_2022


X01_26_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01262022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01262022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01262022))) 


X01_26_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_26_2022


Y01_26_2022 %<>%
  dplyr::filter(complete.cases(Y01_26_2022))



# 01.27.2022 ----

X01_27_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.27.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_27_2022) <- str_replace_all(names(X01_27_2022), c(" " = "_"))


merge(X01_27_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_27_2022


X01_27_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01272022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01272022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01272022))) 


X01_27_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_27_2022


Y01_27_2022 %<>%
  dplyr::filter(complete.cases(Y01_27_2022))



# 01.28.2022 ----

X01_28_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.28.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_28_2022) <- str_replace_all(names(X01_28_2022), c(" " = "_"))


merge(X01_28_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_28_2022


X01_28_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01282022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01282022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01282022))) 


X01_28_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_28_2022


Y01_28_2022 %<>%
  dplyr::filter(complete.cases(Y01_28_2022))



# 01.31.2022 ----

X01_31_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 01.31.22.xlsx", 
                          sheet = "Daily Open PO")


names(X01_31_2022) <- str_replace_all(names(X01_31_2022), c(" " = "_"))


merge(X01_31_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X01_31_2022


X01_31_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(01312022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(01312022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(01312022))) 


X01_31_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y01_31_2022


Y01_31_2022 %<>%
  dplyr::filter(complete.cases(Y01_31_2022))



# 02.01.2022 ----

X02_01_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.01.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_01_2022) <- str_replace_all(names(X02_01_2022), c(" " = "_"))


merge(X02_01_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_01_2022


X02_01_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02012022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02012022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02012022))) 


X02_01_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_01_2022


Y02_01_2022 %<>%
  dplyr::filter(complete.cases(Y02_01_2022))


# 02.02.2022 ----

X02_02_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.02.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_02_2022) <- str_replace_all(names(X02_02_2022), c(" " = "_"))


merge(X02_02_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_02_2022


X02_02_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02022022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02022022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02022022))) 


X02_02_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_02_2022


Y02_02_2022 %<>%
  dplyr::filter(complete.cases(Y02_02_2022))



# 02.03.2022 ----

X02_03_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.03.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_03_2022) <- str_replace_all(names(X02_03_2022), c(" " = "_"))


merge(X02_03_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_03_2022


X02_03_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02032022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02032022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02032022))) 


X02_03_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_03_2022


Y02_03_2022 %<>%
  dplyr::filter(complete.cases(Y02_03_2022))




# 02.04.2022 ----

X02_04_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.04.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_04_2022) <- str_replace_all(names(X02_04_2022), c(" " = "_"))


merge(X02_04_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_04_2022


X02_04_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02042022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02042022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02042022))) 


X02_04_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_04_2022


Y02_04_2022 %<>%
  dplyr::filter(complete.cases(Y02_04_2022))



# 02.07.2022 ----

X02_07_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.07.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_07_2022) <- str_replace_all(names(X02_07_2022), c(" " = "_"))


merge(X02_07_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_07_2022


X02_07_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02072022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02072022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02072022))) 


X02_07_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_07_2022


Y02_07_2022 %<>%
  dplyr::filter(complete.cases(Y02_07_2022))


# 02.08.2022 ----

X02_08_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.08.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_08_2022) <- str_replace_all(names(X02_08_2022), c(" " = "_"))


merge(X02_08_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_08_2022


X02_08_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02082022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02082022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02082022))) 


X02_08_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_08_2022


Y02_08_2022 %<>%
  dplyr::filter(complete.cases(Y02_08_2022))


# 02.09.2022 ----

X02_09_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.09.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_09_2022) <- str_replace_all(names(X02_09_2022), c(" " = "_"))


merge(X02_09_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_09_2022


X02_09_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02092022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02092022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02092022))) 


X02_09_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_09_2022


Y02_09_2022 %<>%
  dplyr::filter(complete.cases(Y02_09_2022))



# 02.10.2022 ----

X02_10_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.10.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_10_2022) <- str_replace_all(names(X02_10_2022), c(" " = "_"))


merge(X02_10_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_10_2022


X02_10_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02102022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02102022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02102022))) 


X02_10_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_10_2022


Y02_10_2022 %<>%
  dplyr::filter(complete.cases(Y02_10_2022))




# 02.11.2022 ----

X02_11_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.11.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_11_2022) <- str_replace_all(names(X02_11_2022), c(" " = "_"))


merge(X02_11_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_11_2022


X02_11_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02112022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02112022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02112022))) 


X02_11_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_11_2022


Y02_11_2022 %<>%
  dplyr::filter(complete.cases(Y02_11_2022))



# 02.14.2022 ----

X02_14_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.14.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_14_2022) <- str_replace_all(names(X02_14_2022), c(" " = "_"))


merge(X02_14_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_14_2022


X02_14_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02142022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02142022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02142022))) 


X02_14_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_14_2022


Y02_14_2022 %<>%
  dplyr::filter(complete.cases(Y02_14_2022))




# 02.15.2022 ----

X02_15_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.15.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_15_2022) <- str_replace_all(names(X02_15_2022), c(" " = "_"))


merge(X02_15_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_15_2022


X02_15_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02152022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02152022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02152022))) 


X02_15_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_15_2022


Y02_15_2022 %<>%
  dplyr::filter(complete.cases(Y02_15_2022))


# 02.16.2022 ----

X02_16_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.16.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_16_2022) <- str_replace_all(names(X02_16_2022), c(" " = "_"))


merge(X02_16_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_16_2022


X02_16_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02162022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02162022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02162022))) 


X02_16_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_16_2022


Y02_16_2022 %<>%
  dplyr::filter(complete.cases(Y02_16_2022))



# 02.17.2022 ----

X02_17_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.17.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_17_2022) <- str_replace_all(names(X02_17_2022), c(" " = "_"))


merge(X02_17_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_17_2022


X02_17_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02172022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02172022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02172022))) 


X02_17_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_17_2022


Y02_17_2022 %<>%
  dplyr::filter(complete.cases(Y02_17_2022))





# 02.18.2022 ----

X02_18_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.18.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_18_2022) <- str_replace_all(names(X02_18_2022), c(" " = "_"))


merge(X02_18_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_18_2022


X02_18_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02182022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02182022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02182022))) 


X02_18_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_18_2022


Y02_18_2022 %<>%
  dplyr::filter(complete.cases(Y02_18_2022))



# 02.21.2022 ----

X02_21_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.21.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_21_2022) <- str_replace_all(names(X02_21_2022), c(" " = "_"))


merge(X02_21_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_21_2022


X02_21_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02212022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02212022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02212022))) 


X02_21_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_21_2022


Y02_21_2022 %<>%
  dplyr::filter(complete.cases(Y02_21_2022))



# 02.22.2022 ----

X02_22_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.22.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_22_2022) <- str_replace_all(names(X02_22_2022), c(" " = "_"))


merge(X02_22_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_22_2022


X02_22_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02222022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02222022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02222022))) 


X02_22_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_22_2022


Y02_22_2022 %<>%
  dplyr::filter(complete.cases(Y02_22_2022))




# 02.23.2022 ----

X02_23_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.23.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_23_2022) <- str_replace_all(names(X02_23_2022), c(" " = "_"))


merge(X02_23_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_23_2022


X02_23_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02232022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02232022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02232022))) 


X02_23_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_23_2022


Y02_23_2022 %<>%
  dplyr::filter(complete.cases(Y02_23_2022))




# 02.23.2022 ----

X02_23_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.23.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_23_2022) <- str_replace_all(names(X02_23_2022), c(" " = "_"))


merge(X02_23_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_23_2022


X02_23_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02232022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02232022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02232022))) 


X02_23_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_23_2022


Y02_23_2022 %<>%
  dplyr::filter(complete.cases(Y02_23_2022))





# 02.24.2022 ----

X02_24_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.24.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_24_2022) <- str_replace_all(names(X02_24_2022), c(" " = "_"))


merge(X02_24_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_24_2022


X02_24_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02242022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02242022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02242022))) 


X02_24_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_24_2022


Y02_24_2022 %<>%
  dplyr::filter(complete.cases(Y02_24_2022))


# 02.25.2022 ----

X02_25_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.25.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_25_2022) <- str_replace_all(names(X02_25_2022), c(" " = "_"))


merge(X02_25_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_25_2022


X02_25_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02252022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02252022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02252022))) 


X02_25_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_25_2022


Y02_25_2022 %<>%
  dplyr::filter(complete.cases(Y02_25_2022))


# 02.28.2022 ----

X02_28_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 02.28.22.xlsx", 
                          sheet = "Daily Open PO")


names(X02_28_2022) <- str_replace_all(names(X02_28_2022), c(" " = "_"))


merge(X02_28_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X02_28_2022


X02_28_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(02282022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(02282022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(02282022))) 


X02_28_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y02_28_2022


Y02_28_2022 %<>%
  dplyr::filter(complete.cases(Y02_28_2022))



# 03.01.2022 ----

X03_01_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.01.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_01_2022) <- str_replace_all(names(X03_01_2022), c(" " = "_"))


merge(X03_01_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_01_2022


X03_01_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03012022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03012022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03012022))) 


X03_01_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_01_2022


Y03_01_2022 %<>%
  dplyr::filter(complete.cases(Y03_01_2022))





# 03.02.2022 ----

X03_02_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.02.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_02_2022) <- str_replace_all(names(X03_02_2022), c(" " = "_"))


merge(X03_02_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_02_2022


X03_02_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03022022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03022022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03022022))) 


X03_02_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_02_2022


Y03_02_2022 %<>%
  dplyr::filter(complete.cases(Y03_02_2022))


# 03.03.2022 ----

X03_03_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.03.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_03_2022) <- str_replace_all(names(X03_03_2022), c(" " = "_"))


merge(X03_03_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_03_2022


X03_03_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03032022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03032022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03032022))) 


X03_03_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_03_2022


Y03_03_2022 %<>%
  dplyr::filter(complete.cases(Y03_03_2022))




# 03.04.2022 ----

X03_04_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.04.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_04_2022) <- str_replace_all(names(X03_04_2022), c(" " = "_"))


merge(X03_04_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_04_2022


X03_04_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03042022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03042022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03042022))) 


X03_04_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_04_2022


Y03_04_2022 %<>%
  dplyr::filter(complete.cases(Y03_04_2022))




# 03.07.2022 ----

X03_07_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.07.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_07_2022) <- str_replace_all(names(X03_07_2022), c(" " = "_"))


merge(X03_07_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_07_2022


X03_07_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03072022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03072022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03072022))) 


X03_07_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_07_2022


Y03_07_2022 %<>%
  dplyr::filter(complete.cases(Y03_07_2022))





# 03.08.2022 ----

X03_08_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.08.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_08_2022) <- str_replace_all(names(X03_08_2022), c(" " = "_"))


merge(X03_08_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_08_2022


X03_08_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03082022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03082022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03082022))) 


X03_08_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_08_2022


Y03_08_2022 %<>%
  dplyr::filter(complete.cases(Y03_08_2022))




# 03.09.2022 ----

X03_09_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.09.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_09_2022) <- str_replace_all(names(X03_09_2022), c(" " = "_"))


merge(X03_09_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_09_2022


X03_09_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03092022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03092022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03092022))) 


X03_09_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_09_2022


Y03_09_2022 %<>%
  dplyr::filter(complete.cases(Y03_09_2022))



# 03.10.2022 ----

X03_10_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.10.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_10_2022) <- str_replace_all(names(X03_10_2022), c(" " = "_"))


merge(X03_10_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_10_2022


X03_10_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03102022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03102022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03102022))) 


X03_10_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_10_2022


Y03_10_2022 %<>%
  dplyr::filter(complete.cases(Y03_10_2022))



# 03.11.2022 ----

X03_11_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.11.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_11_2022) <- str_replace_all(names(X03_11_2022), c(" " = "_"))


merge(X03_11_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_11_2022


X03_11_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03112022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03112022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03112022))) 


X03_11_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_11_2022


Y03_11_2022 %<>%
  dplyr::filter(complete.cases(Y03_11_2022))




# 03.14.2022 ----

X03_14_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.14.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_14_2022) <- str_replace_all(names(X03_14_2022), c(" " = "_"))


merge(X03_14_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_14_2022


X03_14_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03142022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03142022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03142022))) 


X03_14_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_14_2022


Y03_14_2022 %<>%
  dplyr::filter(complete.cases(Y03_14_2022))




# 03.15.2022 ----

X03_15_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.15.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_15_2022) <- str_replace_all(names(X03_15_2022), c(" " = "_"))


merge(X03_15_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_15_2022


X03_15_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03152022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03152022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03152022))) 


X03_15_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_15_2022


Y03_15_2022 %<>%
  dplyr::filter(complete.cases(Y03_15_2022))



# 03.16.2022 ----

X03_16_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.16.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_16_2022) <- str_replace_all(names(X03_16_2022), c(" " = "_"))


merge(X03_16_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_16_2022


X03_16_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03162022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03162022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03162022))) 


X03_16_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_16_2022


Y03_16_2022 %<>%
  dplyr::filter(complete.cases(Y03_16_2022))



# 03.17.2022 ----

X03_17_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.17.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_17_2022) <- str_replace_all(names(X03_17_2022), c(" " = "_"))


merge(X03_17_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_17_2022


X03_17_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03172022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03172022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03172022))) 


X03_17_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_17_2022


Y03_17_2022 %<>%
  dplyr::filter(complete.cases(Y03_17_2022))




# 03.18.2022 ----

X03_18_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.18.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_18_2022) <- str_replace_all(names(X03_18_2022), c(" " = "_"))


merge(X03_18_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_18_2022


X03_18_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03182022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03182022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03182022))) 


X03_18_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_18_2022


Y03_18_2022 %<>%
  dplyr::filter(complete.cases(Y03_18_2022))




# 03.21.2022 ----

X03_21_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.21.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_21_2022) <- str_replace_all(names(X03_21_2022), c(" " = "_"))


merge(X03_21_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_21_2022


X03_21_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03212022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03212022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03212022))) 


X03_21_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_21_2022


Y03_21_2022 %<>%
  dplyr::filter(complete.cases(Y03_21_2022))



# 03.22.2022 ----

X03_22_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.22.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_22_2022) <- str_replace_all(names(X03_22_2022), c(" " = "_"))


merge(X03_22_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_22_2022


X03_22_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03222022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03222022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03222022))) 


X03_22_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_22_2022


Y03_22_2022 %<>%
  dplyr::filter(complete.cases(Y03_22_2022))




# 03.23.2022 ----

X03_23_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.23.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_23_2022) <- str_replace_all(names(X03_23_2022), c(" " = "_"))


merge(X03_23_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_23_2022


X03_23_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03232022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03232022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03232022))) 


X03_23_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_23_2022


Y03_23_2022 %<>%
  dplyr::filter(complete.cases(Y03_23_2022))




# 03.24.2022 ----

X03_24_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.24.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_24_2022) <- str_replace_all(names(X03_24_2022), c(" " = "_"))


merge(X03_24_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_24_2022


X03_24_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03242022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03242022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03242022))) 


X03_24_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_24_2022


Y03_24_2022 %<>%
  dplyr::filter(complete.cases(Y03_24_2022))




# 03.25.2022 ----

X03_25_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.25.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_25_2022) <- str_replace_all(names(X03_25_2022), c(" " = "_"))


merge(X03_25_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_25_2022


X03_25_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03252022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03252022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03252022))) 


X03_25_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_25_2022


Y03_25_2022 %<>%
  dplyr::filter(complete.cases(Y03_25_2022))



# 03.28.2022 ----

X03_28_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.28.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_28_2022) <- str_replace_all(names(X03_28_2022), c(" " = "_"))


merge(X03_28_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_28_2022


X03_28_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03282022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03282022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03282022))) 


X03_28_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_28_2022


Y03_28_2022 %<>%
  dplyr::filter(complete.cases(Y03_28_2022))



# 03.29.2022 ----

X03_29_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.29.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_29_2022) <- str_replace_all(names(X03_29_2022), c(" " = "_"))


merge(X03_29_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_29_2022


X03_29_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03292022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03292022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03292022))) 


X03_29_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_29_2022


Y03_29_2022 %<>%
  dplyr::filter(complete.cases(Y03_29_2022))



# 03.30.2022 ----

X03_30_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.30.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_30_2022) <- str_replace_all(names(X03_30_2022), c(" " = "_"))


merge(X03_30_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_30_2022


X03_30_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03302022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03302022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03302022))) 


X03_30_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_30_2022


Y03_30_2022 %<>%
  dplyr::filter(complete.cases(Y03_30_2022))



# 03.31.2022 ----

X03_31_2022 <- read_excel("C:/Users/SLee/OneDrive - Ventura Foods/Desktop/R-PO Reporting Tools/General/PO Reporting Tool - 03.31.22.xlsx", 
                          sheet = "Daily Open PO")


names(X03_31_2022) <- str_replace_all(names(X03_31_2022), c(" " = "_"))


merge(X03_31_2022, Planner_Category[, c("Transaction_Originator", "Category")], by = "Transaction_Originator", all.x = TRUE) -> X03_31_2022


X03_31_2022 %<>% 
  dplyr::mutate(Month = lubridate::month(lubridate::mdy(03312022))) %>% 
  dplyr::mutate(Year  = lubridate::year(lubridate::mdy(03312022))) %>% 
  dplyr::mutate(Date  = lubridate::date(lubridate::mdy(03312022))) 


X03_31_2022 %>% 
  dplyr::select(Transaction_Originator, Category, Confirm_Date_Overdue, Month, Year, Date) -> Y03_31_2022


Y03_31_2022 %<>%
  dplyr::filter(complete.cases(Y03_31_2022))





#########################################################################################################################################
############################################################## Create X Data ############################################################
#########################################################################################################################################


rbind(X10_01_2021,
      X10_04_2021,
      X10_05_2021,
      X10_06_2021,
      X10_07_2021,
      X10_08_2021,
      X10_11_2021,
      X10_12_2021,
      X10_13_2021,
      X10_14_2021,
      X10_15_2021,
      X10_18_2021,
      X10_19_2021,
      X10_20_2021,
      X10_21_2021,
      X10_22_2021,
      X10_25_2021,
      X10_26_2021,
      X10_27_2021,
      X10_28_2021,
      X10_29_2021,
      X11_01_2021,
      X11_02_2021,
      X11_03_2021,
      X11_04_2021,
      X11_05_2021,
      X11_08_2021,
      X11_09_2021,
      X11_10_2021,
      X11_11_2021,
      X11_12_2021,
      X11_15_2021,
      X11_16_2021,
      X11_17_2021,
      X11_18_2021,
      X11_19_2021,
      X11_22_2021,
      X11_23_2021,
      X11_24_2021,
      X11_29_2021,
      X11_30_2021,
      X12_01_2021,
      X12_02_2021,
      X12_03_2021,
      X12_06_2021,
      X12_07_2021,
      X12_08_2021,
      X12_09_2021,
      X12_10_2021,
      X12_13_2021,
      X12_14_2021,
      X12_15_2021,
      X12_16_2021,
      X12_17_2021,
      X12_20_2021,
      X12_21_2021,
      X12_22_2021,
      X12_23_2021,
      X12_28_2021,
      X12_29_2021,
      X12_30_2021,
      X01_03_2022,
      X01_04_2022,
      X01_05_2022,
      X01_06_2022,
      X01_07_2022,
      X01_10_2022,
      X01_11_2022,
      X01_12_2022,
      X01_13_2022,
      X01_14_2022,
      X01_17_2022,
      X01_18_2022,
      X01_19_2022,
      X01_20_2022,
      X01_21_2022,
      X01_24_2022,
      X01_25_2022,
      X01_26_2022,
      X01_27_2022,
      X01_28_2022,
      X01_31_2022,
      X02_01_2022,
      X02_02_2022,
      X02_03_2022,
      X02_04_2022,
      X02_07_2022,
      X02_08_2022,
      X02_09_2022,
      X02_10_2022,
      X02_11_2022,
      X02_14_2022,
      X02_15_2022,
      X02_16_2022,
      X02_17_2022,
      X02_18_2022,
      X02_21_2022,
      X02_22_2022,
      X02_23_2022,
      X02_24_2022,
      X02_25_2022,
      X02_28_2022,
      X03_01_2022,
      X03_02_2022,
      X03_03_2022,
      X03_04_2022,
      X03_07_2022,
      X03_08_2022,
      X03_09_2022,
      X03_10_2022,
      X03_11_2022,
      X03_14_2022,
      X03_15_2022,
      X03_16_2022,
      X03_17_2022,
      X03_18_2022,
      X03_21_2022,
      X03_22_2022,
      X03_23_2022,
      X03_24_2022,
      X03_25_2022,
      X03_28_2022,
      X03_29_2022,
      X03_30_2022,
      X03_31_2022
) -> X_Data


save(X_Data, file = "X_Data.RData")
save(X_Data, file = "X_Data.rds")



#########################################################################################################################################
############################################################## Create Y Data ############################################################
#########################################################################################################################################





rbind(Y10_01_2021,
      Y10_04_2021,
      Y10_05_2021,
      Y10_06_2021,
      Y10_07_2021,
      Y10_08_2021,
      Y10_11_2021,
      Y10_12_2021,
      Y10_13_2021,
      Y10_14_2021,
      Y10_15_2021,
      Y10_18_2021,
      Y10_19_2021,
      Y10_20_2021,
      Y10_21_2021,
      Y10_22_2021,
      Y10_25_2021,
      Y10_26_2021,
      Y10_27_2021,
      Y10_28_2021,
      Y10_29_2021,
      Y11_01_2021,
      Y11_02_2021,
      Y11_03_2021,
      Y11_04_2021,
      Y11_05_2021,
      Y11_08_2021,
      Y11_09_2021,
      Y11_10_2021,
      Y11_11_2021,
      Y11_12_2021,
      Y11_15_2021,
      Y11_16_2021,
      Y11_17_2021,
      Y11_18_2021,
      Y11_19_2021,
      Y11_22_2021,
      Y11_23_2021,
      Y11_24_2021,
      Y11_29_2021,
      Y11_30_2021,
      Y12_01_2021,
      Y12_02_2021,
      Y12_03_2021,
      Y12_06_2021,
      Y12_07_2021,
      Y12_08_2021,
      Y12_09_2021,
      Y12_10_2021,
      Y12_13_2021,
      Y12_14_2021,
      Y12_15_2021,
      Y12_16_2021,
      Y12_17_2021,
      Y12_20_2021,
      Y12_21_2021,
      Y12_22_2021,
      Y12_23_2021,
      Y12_28_2021,
      Y12_29_2021,
      Y12_30_2021,
      Y01_03_2022,
      Y01_04_2022,
      Y01_05_2022,
      Y01_06_2022,
      Y01_07_2022,
      Y01_10_2022,
      Y01_11_2022,
      Y01_12_2022,
      Y01_13_2022,
      Y01_14_2022,
      Y01_17_2022,
      Y01_18_2022,
      Y01_19_2022,
      Y01_20_2022,
      Y01_21_2022,
      Y01_24_2022,
      Y01_25_2022,
      Y01_26_2022,
      Y01_27_2022,
      Y01_28_2022,
      Y01_31_2022,
      Y02_01_2022,
      Y02_02_2022,
      Y02_03_2022,
      Y02_04_2022,
      Y02_07_2022,
      Y02_08_2022,
      Y02_09_2022,
      Y02_10_2022,
      Y02_11_2022,
      Y02_14_2022,
      Y02_15_2022,
      Y02_16_2022,
      Y02_17_2022,
      Y02_18_2022,
      Y02_21_2022,
      Y02_22_2022,
      Y02_23_2022,
      Y02_24_2022,
      Y02_25_2022,
      Y02_28_2022,
      Y03_01_2022,
      Y03_02_2022,
      Y03_03_2022,
      Y03_04_2022,
      Y03_07_2022,
      Y03_08_2022,
      Y03_09_2022,
      Y03_10_2022,
      Y03_11_2022,
      Y03_14_2022,
      Y03_15_2022,
      Y03_16_2022,
      Y03_17_2022,
      Y03_18_2022,
      Y03_21_2022,
      Y03_22_2022,
      Y03_23_2022,
      Y03_24_2022,
      Y03_25_2022,
      Y03_28_2022,
      Y03_29_2022,
      Y03_30_2022,
      Y03_31_2022
) -> Y_Data


Y_Data %<>% 
  dplyr::mutate(Year_Month = paste(Year, Month, sep = "/")) 


save(Y_Data, file = "Y_Data.RData")
save(Y_Data, file = "Y_Data.rds")





########################################################################################################################
######################################################## Modeling ######################################################
########################################################################################################################


# 1. Monthly Total PO count by Plants vs. SC

Y_Data %>% 
  dplyr::mutate(Total_Order = 1) %>% 
  dplyr::relocate(Total_Order, .after = "Confirm_Date_Overdue") -> wrangled_data

# Plants vs. SC (all of the time frame - 6 months)
wrangled_data %>% 
  dplyr::group_by(Category) %>% 
  dplyr::summarise(number_of_overdue = sum(Confirm_Date_Overdue), number_of_total_order = sum(Total_Order))%>% 
  dplyr::mutate(percent_of_overdue = number_of_overdue / number_of_total_order) -> Six_Months_View_Plants_vs_SC

# Platns vs. SC (monthly view)
wrangled_data %>% 
  dplyr::group_by(Year_Month, Category) %>% 
  dplyr::summarise(number_of_overdue = sum(Confirm_Date_Overdue), number_of_total_order = sum(Total_Order)) %>% 
  dplyr::mutate(percent_of_overdue = number_of_overdue / number_of_total_order) -> Monthly_View

Monthly_View %>% 
  dplyr::filter(Category == "Report directly into the plants") -> Monthly_View_plants

Monthly_View %>% 
  dplyr::filter(Category == "Report to SC") -> Monthly_View_SC



######################################### Platns vs. SC (daily view) #########################################
wrangled_data %>% 
  dplyr::group_by(Date, Category) %>% 
  dplyr::summarise(number_of_overdue = sum(Confirm_Date_Overdue), number_of_total_order = sum(Total_Order)) %>% 
  dplyr::mutate(percent_of_overdue = number_of_overdue / number_of_total_order) -> category_level_daily

category_level_daily %>% 
  dplyr::filter(Category == "Report directly into the plants") -> category_level_daily_plants

category_level_daily %>% 
  dplyr::filter(Category == "Report to SC") -> category_level_daily_SC


# Plants vs. SC (by Transaction Originator - all time period)
wrangled_data %>% 
  dplyr::group_by(Category, Transaction_Originator) %>% 
  dplyr::summarise(number_of_overdue = sum(Confirm_Date_Overdue), number_of_total_order = sum(Total_Order)) %>% 
  dplyr::mutate(percent_of_overdue = number_of_overdue / number_of_total_order) -> planner_level_alltime

planner_level_alltime %>% 
  dplyr::filter(Category == "Report directly into the plants") -> planner_level_alltime_plants

planner_level_alltime %>% 
  dplyr::filter(Category == "Report to SC") -> planner_level_alltime_SC

# Plants vs. SC (by Transaction Originator - Monthly View)
wrangled_data %>% 
  dplyr::group_by(Year_Month, Category, Transaction_Originator) %>% 
  dplyr::summarise(number_of_overdue = sum(Confirm_Date_Overdue), number_of_total_order = sum(Total_Order)) %>% 
  dplyr::mutate(percent_of_overdue = number_of_overdue / number_of_total_order) -> planner_level_monthly


planner_level_daily_monthly %>% 
  dplyr::filter(Category == "Report directly into the plants") -> planner_level_monthly_plants

planner_level_daily_monthly %>% 
  dplyr::filter(Category == "Report to SC") -> planner_level_monthly_SC

####################### Plants vs. SC (by Transaction Originator - daily View) ###############################
wrangled_data %>% 
  dplyr::group_by(Date, Category, Transaction_Originator) %>% 
  dplyr::summarise(number_of_overdue = sum(Confirm_Date_Overdue), number_of_total_order = sum(Total_Order)) %>% 
  dplyr::mutate(percent_of_overdue = number_of_overdue / number_of_total_order) -> planner_level_daily

planner_level_daily %>% 
  dplyr::filter(Category == "Report directly into the plants") -> planner_level_daily_plants

planner_level_daily %>% 
  dplyr::filter(Category == "Report to SC") -> planner_level_daily_SC

## Final modelded
Six_Months_View_Plants_vs_SC

Monthly_View
Monthly_View_plants
Monthly_View_SC

category_level_daily
category_level_daily_plants
category_level_daily_SC

planner_level_alltime
planner_level_alltime_plants
planner_level_alltime_SC

planner_level_monthly
planner_level_monthly_plants
planner_level_monthly_SC

planner_level_daily
planner_level_daily_plants
planner_level_daily_SC


# # # Export to Excel
openxlsx::createWorkbook("example_1") -> example_1

openxlsx::addWorksheet(example_1, "Six_Months_View_Plants_vs_SC")
openxlsx::addWorksheet(example_1, "Monthly_View")
openxlsx::addWorksheet(example_1, "Monthly_View_plants")
openxlsx::addWorksheet(example_1, "Monthly_View_SC")
openxlsx::addWorksheet(example_1, "category_level_daily")
openxlsx::addWorksheet(example_1, "category_level_daily_plants")
openxlsx::addWorksheet(example_1, "category_level_daily_SC")
openxlsx::addWorksheet(example_1, "planner_level_alltime")
openxlsx::addWorksheet(example_1, "planner_level_alltime_plants")
openxlsx::addWorksheet(example_1, "planner_level_alltime_SC")
openxlsx::addWorksheet(example_1, "planner_level_monthly")
openxlsx::addWorksheet(example_1, "planner_level_monthly_plants")
openxlsx::addWorksheet(example_1, "planner_level_monthly_SC")
openxlsx::addWorksheet(example_1, "planner_level_daily")
openxlsx::addWorksheet(example_1, "planner_level_daily_plants")
openxlsx::addWorksheet(example_1, "planner_level_daily_SC")

openxlsx::writeDataTable(example_1, "Six_Months_View_Plants_vs_SC", Six_Months_View_Plants_vs_SC)
openxlsx::writeDataTable(example_1, "Monthly_View", Monthly_View)
openxlsx::writeDataTable(example_1, "Monthly_View_plants", Monthly_View_plants)
openxlsx::writeDataTable(example_1, "Monthly_View_SC", Monthly_View_SC)
openxlsx::writeDataTable(example_1, "category_level_daily", category_level_daily)
openxlsx::writeDataTable(example_1, "category_level_daily_plants", category_level_daily_plants)
openxlsx::writeDataTable(example_1, "category_level_daily_SC", category_level_daily_SC)
openxlsx::writeDataTable(example_1, "planner_level_alltime", planner_level_alltime)
openxlsx::writeDataTable(example_1, "planner_level_alltime_plants", planner_level_alltime_plants)
openxlsx::writeDataTable(example_1, "planner_level_alltime_SC", planner_level_alltime_SC)
openxlsx::writeDataTable(example_1, "planner_level_monthly", planner_level_monthly)
openxlsx::writeDataTable(example_1, "planner_level_monthly_plants", planner_level_monthly_plants)
openxlsx::writeDataTable(example_1, "planner_level_monthly_SC", planner_level_monthly_SC)
openxlsx::writeDataTable(example_1, "planner_level_daily", planner_level_daily)
openxlsx::writeDataTable(example_1, "planner_level_daily_plants", planner_level_daily_plants)
openxlsx::writeDataTable(example_1, "planner_level_daily_SC", planner_level_daily_SC)


openxlsx::saveWorkbook(example_1, file = "PO_Reporting_modeled.xlsx")



########################################################################################################################
#################################################### Visualization #####################################################
########################################################################################################################

Six_Months_View_Plants_vs_SC %>%
  gt::gt() %>%
  gt::tab_header(title = gt::md("__6 Month View (Plants vs. SC)__")) %>%
  gt::tab_style(
    style = gt::cell_text(size = px(15)),
    locations = gt::cells_body()
  ) %>% 
  cols_label(
    Category = gt::md("__Planner Category__")
  ) %>% 
  cols_label(
    number_of_overdue = gt::md("__Number of Confirm Overdue__")
  ) %>% 
  cols_label(
    number_of_total_order = gt::md("__Number of Total Order__")
  ) %>% 
  cols_label(
    percent_of_overdue = gt::md("__Percent of Overdue__")
  ) %>% 
  gt::fmt_percent(
    (percent_of_overdue)
  ) %>% 
  tab_style(
    style = list(
      cell_text(weight = "bold"),
      cell_text(color = "blue")),
    locations = cells_body(
      columns = percent_of_overdue
    )
  ) -> Six_Months_View_Plants_vs_SC_gt



writexl::write_xlsx(wrangled_data, "wrangled_data.xlsx")

View(head(Y_Data))
