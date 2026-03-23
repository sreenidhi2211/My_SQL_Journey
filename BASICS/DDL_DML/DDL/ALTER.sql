-- ALTER: to modify the structure of the database
-- involves adding,removing,modify columns in the table

-- SYNTAX:
--	ALTER TABLE table_name
-- ADD column_name data_type -- this is to add column
-- DROP COLUMN column_name data_type -- to delete column  
-- MODIFY COLUMN column_name new_datatype -- if new size specify it aso -- to modify the column
-- RENAME COLUMN old_col_name TO new_col_name -- to rename the column

USE db_school;
-- altering subject_id to auto increment

ALTER TABLE Subjects
MODIFY COLUMN subject_id INT auto_increment;

-- Add column address to students
ALTER TABLE Students
ADD COLUMN Address VARCHAR(100);

-- Add column experience to teachers
ALTER TABLE Students
ADD COLUMN experience INT;

-- Change email size to 100 in students
ALTER TABLE Students
MODIFY COLUMN email VARCHAR(100);

-- Rename column class_name → section_name in classes
ALTER TABLE Classes
RENAME COLUMN class_name TO section_name;

-- Remove column total_marks from subjects
ALTER TABLE Subjects
DROP COLUMN total_marks ;

-- Add column grade in enrollments
ALTER TABLE Enrollments
ADD COLUMN grade VARCHAR(10);

-- Change marks datatype to FLOAT
ALTER TABLE Enrollments
MODIFY COLUMN marks FLOAT;

-- DESCRIBE used to see the detailed view of tables like datatype,null,key types,Default values
DESCRIBE Classes;
DESCRIBE Subjects;
DESCRIBE Teachers;
DESCRIBE Students;
DESCRIBE Enrollments;

