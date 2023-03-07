CREATE TABLE STAAR_Performance_2022_101912(
School_Year Date Not Null,
States int Not Null,
Region int Not Null,
District int Not Null,
African_American int Not Null,
Hispanic int Not Null,
White int Not Null,
American_Indian int Not Null,
Asian int Not NUll,
Pacific_Islander int Not Null,
Two_or_More_Races int Not Null,
Special_Ed_Current int Not Null,
Special_Ed_Former int  Not Null,
Continuously_Enrolled int Not Null,
Non_Continuously_Enrolled int Not Null,
Econ_Disadv int Not Null,
EB_EL_Current_And_Monitored int Not Null,

PRIMARY KEY (District)
--FOREIGN KEY (State_Scores)

);