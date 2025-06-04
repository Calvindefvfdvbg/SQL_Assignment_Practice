-- CREATE A DATABASE 
CREATE DATABASE UNIVERSITY1;
-- USE DATABASE
USE UNIVERSITY1;
-- CREATE A TABLE 
CREATE TABLE STUDENT1(
     StudentID int primary key,
FirstName varchar(20),
LastName varchar(20),
BirthDate date
);
-- STRUCTURE OF THE TABLE
DESC  STUDENT1;
-- CREATE A TABLE 
CREATE TABLE COURSE1(
      CourseID int primary key,
CourseName varchar(40),
Instructor varchar(40),
Credits int
);
-- CREATE A ANOTHER TABLE
 CREATE TABLE ENROLLMENTS1(
      EnrollmentID int primary key,
StudentID int, 
CourseID int,
EnrollmentDate date,
foreign key(StudentID) references STUDENT1(StudentID),
foreign key(CourseID) references COURSE1(CourseID)
 );
-- Task 1: Insert Data
-- Insert a new student with StudentID 301
INSERT INTO Student1 (StudentID, FirstName, LastName, BirthDate)
VALUES (301, 'Alice', 'Johnson', '1995-08-15');

-- Task 2: Update Data
-- Update the instructor of the course with CourseID 201 to 'Professor Smith'
UPDATE Course1
SET Instructor = 'Professor Smith'
WHERE CourseID = 201;

-- Task 3: Delete Data
-- Delete all enrollment records for the student with StudentID 301
DELETE FROM Enrollments1
WHERE StudentID = 301;

-- Task 4: Query
-- Retrieve the names of students enrolled in CourseID 101, including their enrollment date
SELECT 
    S.FirstName, 
    S.LastName, 
    E.EnrollmentDate
FROM 
    Student1 S
JOIN 
    Enrollments1 E ON S.StudentID = E.StudentID
WHERE 
    E.CourseID = 101;
