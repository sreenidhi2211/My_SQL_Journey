-- DATA MANIPULATION LANGUAGE:
-- it is used to manipulate i.e,make changes in data in the table not the structure
-- Command | Purpose
-- INSERT  | Add data
-- UPDATE  | Modify data
-- DELETE  | Remove data

-- INSERT:used to add data into the table
-- SYNTAX:

-- INSERT INTO table_name(column_1,column_2)
-- VALUES
-- 	(r1_value1,r1_value2),
-- 	(r2_value1,r2_value2);

-- or

-- INSERT INTO table_name
-- VALUES(r1_value1,r1_value2);


USE db_school;
DESCRIBE Subjects;
SET FOREIGN_KEY_CHECKS =1;

INSERT INTO subjects
VALUES 
	(1,"Telugu",90),
	(2,"Hindi",90),
	(3,"English",90),
    (4,"Mathematics",100),
    (5,"Physics",50),
    (6,"Biology",50),
    (7,"Social",100),
	(8,"General Knowledge",75);
    
SELECT * FROM Subjects;

INSERT INTO Teachers (teacher_name,subject_id)
VALUES
	("Sammera",2),
    ("Alex",1),
    ("Ganesh",3),
	("Rajendra",4); 
    
INSERT INTO Teachers(teacher_name)
VALUES("Rosie");

SELECT * FROM Teachers;
    
INSERT INTO Classes(class_name,teacher_id)
VALUES
	("Class A",3),
    ("Class B",2),
    ("Class D",4),
    ("Class E",1);
    
INSERT INTO Classes(class_name)
VALUES
	("Class C");

SELECT * FROM Classes;

INSERT INTO Students(first_name,last_name,age,email,class_id)
VALUES
	("Nidhi","Namma",12,"namma_nidhi23@gmail.com",2),
    ("Dheera","Danniel",13,"d_dheera23@yahoo.com",3),
    ("Franklien","John",12,"john_frank45@outlook.com",4),
	("Vaishu","Karinda",14,"k_vaishu_743@gmail.com",1);
    

INSERT INTO Students(first_name,last_name,age,email)
VALUES
	("Gayatri","Jaggairi",14,"jaggiri_12_gayatri@outlook.com");

SELECT * FROM Students;

DESCRIBE Enrollments;
INSERT INTO Enrollments(enrolled_date,student_id,subject_id,marks)
VALUES
	('2026-01-01',1,4,90),
	('2026-02-02',3,5,35),
	('2026-03-03',2,2,80),
	('2026-04-04',4,1,79),
	('2026-05-05',5,3,90), 
    ('2026-06-06',3,6,67),
    ('2026-07-07',4,8,45);
    
SELECT * FROM Enrollments;
    
    
        