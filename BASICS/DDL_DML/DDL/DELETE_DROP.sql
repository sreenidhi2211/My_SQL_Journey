-- DROP: use to delete the data and structure of the table or a database
-- it is irreversible
-- SYNTAX:
-- DROP DATABASE database_name;
-- DROP TABLE table_name1,table_name_2;


-- THIS COMMAND IS USED TO PERMENANTLY DELETE THE DATABASE THAT EXISTS WITH THE SAME NAME 
DROP DATABASE IF EXISTS db_school;

-- Drop table classes
DROP TABLE Classes;
-- doesnt execute throws error:
-- ERROR:Error Code: 3730. Cannot drop table 'classes' referenced by a foreign key constraint 'students_ibfk_1' on table 'students'.	0.000 sec
-- SOLUTION:
-- make MySQL to stop checking for relationship temporarily
SET FOREIGN_KEY_CHECKS =0;
-- THEN DROP the table
DROP TABLE Classes;
-- THEN make MySQL to check for relationships to protect the data integrity and constraint checks
SET FOREIGN_KEY_CHECKS =1;
-- Drop table teachers

-- TRUNCATE : removes the data but preserves the structure only used on table not its columns
-- faster then DELETE because it removes all data like reset at once unlike DELETE which does it row by row

-- SYNTAX:
-- TRUNCATE TABLE table_name; 

-- truncate students
TRUNCATE TABLE Students;
-- doesnt execute throws error:
-- ERROR : Error Code: 1701. Cannot truncate a table referenced in a foreign key constraint (`db_school`.`enrollments`, CONSTRAINT `enrollments_ibfk_1`)
-- so you need to use these commands
SET FOREIGN_KEY_CHECKS =0; -- stop checking constraints
TRUNCATE TABLE Students;-- truncate the table
SET FOREIGN_KEY_CHECKS =1; -- start checking constraints

