create table student_grading (
    Student_ID INTEGER PRIMARY KEY NOT NULL,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(255),
    Gender VARCHAR,
    Age INTEGER,
    Department VARCHAR(50),
    Attendance DECIMAL(5,2),
    Midterm_Score DECIMAL(5,2),
    Final_Score DECIMAL(5,2),
    Assignments_Avg DECIMAL(5,2),
    Quizzes_Avg DECIMAL(5,2),
    Participation_Score DECIMAL(5,2),
    Projects_Score DECIMAL(5,2),
    Total_Score DECIMAL(5,2),
    Grade CHAR(2),
    Study_Hours_per_Week DECIMAL(4,1),
    Extracurricular_Activities TEXT,
    Internet_Access_at_Home BOOLEAN,
    Parent_Education_Level VARCHAR(50),
    Family_Income_Level VARCHAR(50),
    Stress_Level INT,
    Sleep_Hours_per_Night DECIMAL(4,1)
);
select  *from student_grading

select distinct  Student_ID,First_Name,Last_Name,Email,Gender,Age,Department, Attendance from  student_grading where Department='cs'order by  Student_ID

create table department_data as (select distinct  Student_ID,First_Name,Last_Name,Email,Gender,Age,Department, Attendance from  student_grading where Department='cs'order by  Student_ID
)
select *from department_data


select distinct  Student_ID,First_Name,Last_Name,Email,Gender,Age,Department, Attendance from  student_grading where gender ='male'order by  Student_ID

create table gender_data as (select distinct  Student_ID,First_Name,Last_Name,Email,Gender,Age,Department, Attendance from  student_grading where gender='m'order by  Student_ID
)
select *from gender_data

select s.Student_ID,s.First_Name,s.Last_Name,s.Email,s.Gender,s.Age,s.Department, s.Attendance from  student_grading where gender ='male'order by  Student_ID

inner join student_grading_department_data as d
on s.Student_ID=d.s.Student_ID
inner join student_grading_gender_data  as g
on  s.Student_ID=p.s.Student_ID


CREATE TABLE student_grading_data AS 
SELECT 
    s.Student_ID, s.First_Name, s.Last_Name, s.Email, s.Gender, 
    s.Age, s.Department, s.Attendance
FROM student_grading AS s
INNER JOIN student_grading_department_data AS d 
    ON s.Department_ID = d.Department_ID
INNER JOIN student_grading_gender_data AS g 
    ON s.Student_ID = g.Student_ID;


select * from student_grading_data