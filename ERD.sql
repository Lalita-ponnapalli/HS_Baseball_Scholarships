Master
---
DISTRICT_ID int pk
DISTRICT_NAME varchar

PostSecEnroll
---
SCHOOL_YEAR varchar(10)
AGENCY_TYPE varchar
CHARTER_IND varchar
CESA varchar
COUNTY varchar
DISTRICT_ID int pk FK >- Master.DISTRICT_ID
SCHOOL_CODE int
GRADE_GROUP varchar
DISTRICT_NAME varchar
SCHOOL_NAME varchar
INITIAL_ENROLLMENT varchar
INSTITUTION_LOCATION varchar
INSTITUTION_LEVEL varchar
INSTITUTION_TYPE varchar
GROUP_BY varchar
GROUP_BY_VALUE varchar
GROUP_COUNT int
STUDENT_COUNT int

Revenue
---
DISTRICT_ID int pk FK >- Master.DISTRICT_ID
DISTRICT_NAME varchar
FISCAL_YEAR varchar(10)
PROPTAX float
FEDERAL float
STATE float
LOCAL float
TOTAL float
MEMBER int

Costs
---
DISTRICT_ID int pk FK >- Master.DISTRICT_ID
DISTRICT_NAME varchar
FISCAL_YEAR varchar(10)
Member int
Instruction float
Pupil_Staff_Support float
Admin float
Operation_Other float
Transportation_cost float
Facility_cost float
Food_comm_service_cost float

ReportCards
---
School_Year varchar(10)
District_ID int pk FK >- Master.DISTRICT_ID
School_Code int
Cooperative_Educational_Service_Agency varchar
District_Name varchar
Overall_Accountability_Score float
Overall_Accountability_Rating varchar
Lowest_Grade_in_the_District varchar
Highest_Grade_in_the_District varchar
School_Type varchar
District_Enrollment int
Percent_American_Indian_or_Alaskan_Native float
Percent_Asian float
Percent_Black_or_African_American float
Percent_Hispanic_Latino float
Percent_Native_Hawaiian_or_Other_Pacific_Islander float
Percent_White float
Percent_Two_or_More_Races float
Percent_Students_with_Disabilities float
Percent_Economically_Disadvantaged float
Percent_Limited_English_Proficient float
Percent_Within_District_Mobility float
Percent_Between_District_Mobility float
District_Student_Achievement_Score float
District_ELA_Achievement_Score float
District_Mathematics_Achievement_Score float
District_Student_Growth_Score float
District_ELA_Growth_Score float
District_Mathematics_Growth_Score float

Budgets
---
District_ID int pk FK >- Master.DISTRICT_ID
SCHOOL_YEAR varchar(10)
DISTRICT_NAME varchar
FUND_Function varchar
AMOUNT float