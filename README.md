# SQL-Challenge

Introduction

In this practice, I am the new data engineer at Pewlett Hackard.  This is my first major task, a research project on wmployees of the corporation form the 1980's to the 1990's. Six CSV files were combined to create an employees SQL database.  The files contained employee data including employee number, title, name, sex, hire date, assigned department, and salary.  

Methods

ERD of tables was created using quick database diagrams.  Using Postgres the data was analyzed by joining tables and selecting based on different criteria. After analysis in Postgres data was opened in a Jupyter notebook and analyzed using Pandas. A histogram and bar graph were created using Matplotlib.  

Analysis/Results

Some examples of selection criteria and combining of tables in Postrgres:

The manager of each department.

![Data Analysis #3](https://user-images.githubusercontent.com/88807979/143721306-8a29a23a-20fb-45d2-a41b-a5774fba1031.png)

Employees with the first name Hercules.

![Data Analysis #5](https://user-images.githubusercontent.com/88807979/143721335-e7a71922-6304-4b62-ab82-78a9fe3611c6.png)

In descending order, the frequency count of employees last names.

![Data Analysis #8](https://user-images.githubusercontent.com/88807979/143721365-d0fbaa81-3418-4b03-abc1-dd8371bbd3c8.png)

Once imported into Jupyter, a histogram was created with the most common salary ranges for employees.

![employee salary ranges histogram](https://user-images.githubusercontent.com/88807979/143727328-e11b077d-bd03-4cfc-9d8e-5c28ed698d06.png)

Addtitionally a bar chart of average salary by title. 

![Average Employee Salary by Title](https://user-images.githubusercontent.com/88807979/143727305-8a1cf5fe-f83a-4bb8-9523-afe28c9194f0.png)

Discussion/Conclusion 

Looking at the data there are a large number of employees >200 that shared the same last name and they were not common names.  Additionally one of the analysis steps was looking at the first name Hercules which was shared by quite a few employees suggesting the data set was not an accurate one.  Additionally when searching my ID number of 499942 revealed the following return, confirming my suspicion of the data set. 

![My employee ID](https://user-images.githubusercontent.com/88807979/143727392-e98afa6b-696b-47f2-8e02-e923c666366e.png)


