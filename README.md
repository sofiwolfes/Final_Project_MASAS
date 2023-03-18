# Academic Progress of Houston Region ELL Students from 2019-2022
This project seeks to analysize the academic progress of English Language Learning (ELL or EL) students in the Houston Region of Texas between 2019-2022 (pre- and post- COVID-19). To see our final presentation |[Click here]([https://github.com/](https://docs.google.com/presentation/d/1NOg834Tvg7LUZZ1kR1qbmaH5noaO-ygMyaTzDU676KA/edit?usp=sharing))|.

## Project Overview
English is considered one of the hardest languages to learn. For English Learners (ELs), the road to fluency is paved with challenges. Thankfully, many public schools offer language assistance programs to ensure that children speaking another language can attain English proficiency. In fall 2019, "Texas reported the highest percentage of ELs among its public school students (19.6 percent)" (1). The purpose of this project is to analyze the academic progress (math and reading) of ELLs in the Houston region of Texas. 

In order to analyze this data accurately, we will complete the follow 5 steps:
1. Define questions and goals
2. Collect data
3. Data wrangling
4. Determine analysis
5. Interpret Results

## Questions
Understanding the needs of children learning English in the US is very important in developing lesson plans that strengthen and promote growth. For our project, we came up with four questions to guide our analysis:
- How do academic scores progress or change through the years for ELLs?
- How do EL students academic scores comepare to students whose first language is english?
- To what extent did the pandemic period impact the test scores of ELL students?
- How did the language arts (reading & writing) scores compare to the Math and Science scores of ELL students?

These questions are critical for helping us understand how ELL students develop proficieny over time, how they compare to their counterparts, and how the pandemic impacted their learning.

## Data Collection
### Overview
Originally, we were going to analyze data from one district in Texas; we were encouraged to expand our analysis to the whole state to enrichen our data vizualization and create a robust database. However, we decided to focus only on one county because of time constraints. Long-term, we hope to incorporate all county data in our analysis. Our database includes all schools within Harris County, Texas. 

Stated on their website, "the Texas Education Agency is the state agency that oversees primary and secondary public education...The Texas Education Agency improves outcomes for all public school students in the state by providing leadership, guidance, and support to school systems" (2). The Texas Education Agency uses the State of Texas Assessments of Academic Readiness (STAAR®) program as a metric for measuring the academic growth and improvement of students year over year. Each year, a STAAR report card is published for students administered the assessment.

The STAAR program includes annual assessments for:
- mathematics at grades 3–8
- reading language arts (RLA) at grades 3-8
- science at grades 5 and 8
- social studies at grade 8
- end-of-course (EOC) assessments for Algebra I, English I, English II, Biology, and U.S History

We will only be looking at 2 subjects: mathematics and reading language arts (RLA).

### Database
Out of 20 regions in the state of Texas, we reviewed all 56 schools in Region 4 (Houston). Our database is a compilation of all school districts from grades 3-7. Each school's data were downloaded from the TEA website, reformated, and cleaned using VBA and SQL. 

20 Out of 56 Schools were not included in our database for the following reasons:
- Excluded other grade levels (7)
- Insufficient data or no data at all (7)
- Insufficient or no ELL data (6)

For more information on which schools were left out click the dropdown menu below.

<details close>
<summary>Harris County 2021-2022 STAAR Performance for Grade 3-7</summary>
  <br>
<ul><li>A+ Unlimited Potential - Removed because strictly middle school</li>
<li>Academy of Accelerated Learning - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101810&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Accelerated Intermediate Academy - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101849&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Aldine ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101902&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Alief_ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101903&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Alief Montessori Community School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101815&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Amigos Por Vida Charter School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101819&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Aristoi Classical Academy - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101803&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Beatrice Mayes Institute Charter School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101847&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Beta Academy - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101870&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Bloom Academy - Removed data set due to no grade levels beyond Grade 3 and Grade 4</li>
<li>Calvin Nelms Charter School - Removed data set due to no Grade 3 - Grade 5</li>
<li>Channelview ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101905&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Comquest Academt removed due to insufficient data set</li>
<li>Crosby ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101906&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Cypress-Fairbanks ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101907&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Deer Park ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101908&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Draw Academy - removed due to insufficient data set</li>
<li>Elevate Collegiate Charter School - removed due to no data available</li>
<li>Etoile Academy Charter School - removed due to no Grade 3 - Grade 4 Data</li>
<li>Excel Academy - removed due to insufficient data set</li>
<li>Galena Park ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101910&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>George I Sanchez Charter - removed due to no Grade 3 - Grade 5 data</li>
<li>Goose Creek CISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101911&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Harmony Public Schools North - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101858&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Harmony Public Schools South - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101846&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Harmony Public Schools West - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101862&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Houston Classical Charter - removed due to no data available</li>
<li>Houston Gateway Academy - removed due to insufficient data set</li>
<li>Houston Heights High School - removed due to no Grade 3 - Grade 7 data</li>
<li>Houston ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101912&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Huffman ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101925&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Humble ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101913&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Katy ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101914&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Klein ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101915&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>La Porte ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101916&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Legacy School of Sport Sciences - removed due to no ELL data</li>
<li>Meyerpark Elementary - removed due to no ELL data</li>
<li>Pasadena ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101917&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Promise Community School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101853&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Raul Yzaguirre School for Success - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101806&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Reve Prep Charter School - removed due to insufficient data for ethnicity and ELL</li>
<li>Ser-Ninos Charter School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101802&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Sheldon ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101924&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Southwest School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101838&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Spring Branch ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101920&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Spring ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101919&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Step Charter School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101859&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Lawson Academy - removed due to no ELL data</li>
<li>Pro-Vision Academy - removed due to insufficient ethnicity data</li>
<li>Rhodes School for Performing Arts - removed due to no ELL data</li>
<li>Varnett Public School - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101814&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Tomball ISD - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101921&prgopt=reports%2Ftapr%2Fperformance.sas</li>
<li>Two Dimensions Prep Academy - removed due to no ELL data</li>
<li>Yellowstone College Prep - removed due to no Grade 3 - Grade 4</li>
<li>Yes Prep Schools - https://rptsvr1.tea.texas.gov/cgi/sas/broker?_service=marykay&_program=perfrept.perfmast.sas&_debug=0&lev=D&id=101845&prgopt=reports%2Ftapr%2Fperformance.sas</li></ul>
</details>

## Data Wrangling
Cleaning and preparing the data was by far the hardest and most time consuming section of our project. To cover more ground, we split the group into two sections: Cleaning and Testing. One group was responsible for installing STAAR data for all 36 schools. In the process, they created a macro using VBA to reformat and renamed columns in each xlsx file. Next, they used Postgress (SQL) to combine and store all data sets into one database. The other group focused on testing out the newly cleaned database. They imported CSV files into  Jupyter notebook using Python's Pandas library to ensure files were cleaned.

Because of how complicated our data was, we created a key to help us through the analysis portion of our project.

Key
Mastery - Measures the percentage at which students Approaches Grade Level or Above, Meet Grade Level or Above, and Master Grade Level.
YoY - Student's academic growth is measured by the difference of the test scores from the prior year and the current year.
...

## Data Exploration and Analysis
### Overview
Use tools like Tableau or JavaScript to build a dashboard that presents your results

### Machine Learning
The final step of this project will involve machine learning and predictive analysis. In this segment, we will use supervised machine learning to make predictions of how scores may look for these student demographics in the coming years.

## Interpretation of Results


## Conclusion
While we weren't able ...Wdid....Moving forward, we would like to explore xyz

## References
1. National Center for Education Statistics. (2022). English Learners in Public Schools. Condition of Education. U.S. Department of Education, Institute of Education Sciences. Retrieved [date], from https://nces.ed.gov/programs/coe/indicator/cgf.
2. About tea. Texas Education Agency. (2022, September 20). Retrieved March 18, 2023, from https://tea.texas.gov/about-tea#:~:text=The%20Texas%20Education%20Agency%20is,and%20support%20to%20school%20systems. 
