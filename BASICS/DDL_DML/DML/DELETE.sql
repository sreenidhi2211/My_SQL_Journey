-- DELETE :
-- used to delete the data in the table based on the condition
-- it is a row wise deletion 
-- deletion canbe rolled back

-- SYNTAX:
-- DELETE FROM table_name
-- WHERE <condition>

-- NOTE:
-- You cannot delete parent row if child exists
USE db_school;

-- Delete a subject 7
DELETE FROM Subjects
WHERE subject_id = 7;


-- Delete a student by ID 
DELETE FROM Students
WHERE student_id = 2;

-- we cant delete student with id as it is refered by some enrollments
-- so we need to delete the enrollments first

DELETE FROM Enrollments
WHERE student_id = 2;

-- now delete the student with id 2
DELETE FROM Students
WHERE student_id = 2;


