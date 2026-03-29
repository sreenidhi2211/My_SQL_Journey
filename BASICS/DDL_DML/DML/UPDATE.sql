-- UPDATE:
-- it is used to change the data in the table

-- SYNTAX:
-- UPDATE table_name
-- SET column_name = new_value
-- WHERE <condition>; (optional id not used all the rows will be updated).

 -- Assign Rosie to Biology
 UPDATE teachers
 SET subject_id = 6
 WHERE teacher_id =5 ;

 -- update to full marks- enrollment_id 6 has marks greater than total marks which are 50 
 
 UPDATE Enrollments 
 SET marks = 50
 WHERE enrollment_id = 6;

 -- Update all subject names to UPPERCASE

SET SQL_SAFE_UPDATES = 0;

-- (my sql has safe update mode we need to set value =0 to make some updates
--  then replace the value by 1 again to prevent corruption)

UPDATE Subjects
SET subject_name = UPPER(subject_name);

-- Update all student emails: Replace "@outlook.com" → "@gmail.com"

UPDATE Students
SET email = REPLACE (email,"@outlook.com","@gmail.com");
