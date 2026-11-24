create database school ;
use school ; 

select * from student_grades_assignment ;

#A- Basic Questions:

#Q1
select count(*) as Total_Records from student_grades_assignment ;

#Q2
select avg(Grade) as AVG_grade from student_grades_assignment ;

#Q3 
select max(Grade) as MAx_grade from student_grades_assignment ;

#Q4
select MIN(Grade) as min_grade from student_grades_assignment ;

#Q5
select count(distinct studentid ) from student_grades_assignment ;

#Q6 
SELECT CourseID, AVG(Grade) AS Average_Grade
FROM student_grades_assignment
GROUP BY CourseID;

#Q7 
SELECT Department, COUNT(StudentID) AS Number_Of_Students
FROM student_grades_assignment
GROUP BY Department;

#Q8 
SELECT CourseID, MAX(Grade) AS Highest_Grade
FROM student_grades_assignment
GROUP BY CourseID;

#Q9
SELECT CourseID, MIN(Grade) AS lOWEST_Grade
FROM student_grades_assignment
GROUP BY CourseID ;

#Q10 
SELECT StudentID, COUNT(DISTINCT CourseID) AS Number_Of_Courses
FROM student_grades_assignment
GROUP BY StudentID;

#B- Intermediate Questions:
#Q11
SELECT CourseID, AVG(Grade) AS Average_Grade
FROM student_grades_assignment
GROUP BY CourseID
HAVING AVG(Grade) > 75;

#Q12
SELECT StudentID, COUNT(DISTINCT CourseID) AS Number_Of_Courses
FROM student_grades_assignment
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) > 3;

#Q13
SELECT Department, AVG(Grade) AS Average_Grade
FROM student_grades_assignment
GROUP BY Department
HAVING AVG(Grade) < 65;

#Q14 
SELECT StudentID, MAX(Grade) AS Maximum_Grade
FROM student_grades_assignment
GROUP BY StudentID
HAVING MAX(Grade) = 100;

#Q15 
SELECT CourseID, COUNT(DISTINCT StudentID) AS Number_Of_Students
FROM student_grades_assignment
GROUP BY CourseID
HAVING COUNT(DISTINCT StudentID) >= 20;

#Q16
SELECT StudentID,
COUNT(DISTINCT CourseID) AS Total_Courses,
AVG(Grade) AS Average_Grade
FROM student_grades_assignment
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) >= 4
AND AVG(Grade) > 80;

#Q17 
SELECT Department,
MAX(Grade) AS Maximum_Grade,
AVG(Grade) AS Average_Grade
FROM student_grades_assignment
GROUP BY Department
HAVING MAX(Grade) >= 2 * AVG(Grade);

#Q18
SELECT CourseID, AVG(Grade) AS Average_Grade
FROM student_grades_assignment
GROUP BY CourseID
HAVING AVG(Grade) > (
SELECT AVG(Grade)
FROM student_grades_assignment);

#Q19
SELECT StudentID, MIN(Grade) AS Lowest_Grade
FROM student_grades_assignment
GROUP BY StudentID
HAVING MIN(Grade) > 70;

#Q20
SELECT StudentID, MIN(Grade) AS Lowest_Grade
FROM student_grades_assignment
GROUP BY StudentID
HAVING MIN(Grade) > 70;