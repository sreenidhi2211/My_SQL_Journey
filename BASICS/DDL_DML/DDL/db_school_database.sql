-- DDL (DATA DEFINATION LANGUAGE)
-- as the name says- it defines the data and structure of the database
-- it create,alters the database,tables and columns
-- here is the short notes on the commands
-- | Command  | Purpose                           |
-- | -------- | --------------------------------- |
-- | CREATE   | Create database/table             |
-- | ALTER    | Modify structure                  |
-- | DROP     | Delete table/database             |
-- | TRUNCATE | Remove all data (structure stays) |
-- | RENAME   | Rename table                      |

-- CREATE: used to create the database or the table

-- 1.  CREATING A DATABASE :
-- SYNTAX:
-- 	CREATE DATABASE database_name ;

CREATE DATABASE db_school ;

-- USE THE DATABASE:
-- SYNTAX:
-- 	USE database_name ;

USE db_school ;

-- 2. CREATE A TABLE
-- SYNTAX:
-- --	CREATE TABLE database.table_name
-- 			(column_name1 data_type,
-- 			column_name2 data_type
-- )

CREATE TABLE db_school.Subjects (
	subject_id INT NOT NULL,
    subject_name VARCHAR(50) NOT NULL,
    total_marks INT,
    PRIMARY KEY(subject_id)
    );

CREATE TABLE db_school.Teachers (
	teacher_id INT NOT NULL,
    teacher_name VARCHAR(50) NOT NULL,
    subject_id INT,
    PRIMARY KEY(teacher_id),
    FOREIGN KEY(subject_id) REFERENCES Subjects(subject_id)
    );
    
CREATE TABLE db_school.Classes(
	class_id INT auto_increment,
	class_name VARCHAR(50),
	teacher_id INT,
    PRIMARY KEY(class_id),
    FOREIGN KEY(teacher_id) REFERENCES Teachers(teacher_id)
    );
    
CREATE TABLE db_school.Students(
	student_id INT NOT NULL auto_increment,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(50),
    class_id INT,
    PRIMARY KEY(student_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

CREATE TABLE db_school.Enrollments(
	enrollment_id INT auto_increment,
    enrolled_date DATE,
    student_id INT,
    subject_id INT,
    marks INT,
    PRIMARY KEY(enrollment_id),
    FOREIGN KEY(student_id) REFERENCES Students(student_id),
    FOREIGN KEY(subject_id) REFERENCES Subjects(subject_id)
    );
    
-- ALTER: to modify the structure of the data base
-- involves adding,removing,modify columns in the table

-- SYNTAX:
--	ALTER TABLE table_name
-- ADD column_name data_type -- this is to add column
-- DROP COLUMN column_name data_type -- to delete column  
-- MODIFY COLUMN column_name new_datatype -- if new size specify it aso -- to modify the column
-- RENAME COLUMN old_col_name TO new_col_name -- to rename the column

ALTER TABLE Subjects
MODIFY COLUMN subject_id INT auto_increment;



    

   
    

