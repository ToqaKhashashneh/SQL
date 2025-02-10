Create database  School_System;

Use School_System;


Create Table Teachers 
(
  ID int Primary Key,
  Name varchar(50) Not Null
);


Create Table Teacher_Details
(
ID int Primary Key,
Age int Not Null,
Major varchar (100) Not Null,
Email Varchar (100) Unique,
Salary int Not Null,
TeacherID int Unique Foreign Key REFERENCES Teachers (ID)
);

Insert Into Teachers(ID , Name)
Values  (1, 'Moath Abu Qamar'),
		(2,'Mazhar Otoum'),
		(3,'Yaseer Jaradat'),
		(4, 'Ahmad Al-Omari'),
		(5,'Mohammad Deljawi');

Insert Into Teacher_Details(ID, Age, Major, Email, Salary, TeacherID)
Values  (1, 40,'Soil Mechanics Engineering', 'Moath@gmail.com', 1000, 1),
		(2, 55,'Pavement Engineering', 'Mazhar@gmail.com', 1000, 2),
		(3, 60,'Structural Engineering', 'Yaseer@gmail.com', 1000, 3),
		(4, 45,'Transportation Engineering', 'Ahmad@gmail.com', 1000, 4),
		(5, 48,'Surveying Engineering', 'Mohammad@gmail.com', 1000, 5);


Select * From Teachers

Select * From Teacher_Details


Create Table Students 
(
	ID int Primary Key,
	Name varchar (50) Not Null,
	Age int Not Null,
	Email varchar (100) unique,
	Major varchar (200) Not Null
);

Create Table Courses 
(
	ID int Primary Key,
	Name varchar (200) Not Null,
	HoursPerWeek int Not Null,
   TeacherID int  Foreign Key REFERENCES Teachers (ID) 
);


Insert into Students (ID, Name, Age, Email, Major)
Values (1, 'Toqa' , 25, 'Toqa@gmail.com' , 'Civil Engineering'),
	   (2, 'Haneen' , 22, 'Haneen@gmail.com' , 'Civil Engineering'),
	   (3, 'Tariq' , 24, 'Tariq@gmail.com' , ' Civil Engineering'),
	   (4, 'Mahmoud' ,23, 'Mahmoud@gmail.com' , 'Civil Engineering'),
	   (5, 'Yousef' , 20, 'Yousef@gmail.com' , 'Civil Engineering');

Insert Into Courses(ID, Name, HoursPerWeek, TeacherID)
Values (1, 'Soil Mechanics', 3, 1),
        (2, 'Pavement Maintenance ', 3, 2),
		(3, 'Steel Structure', 3, 3),
		(4, 'Traffic Analysis', 3, 4),
		(5, 'Quantity Surveying', 3, 5),
		(6, 'Statstics', 3, 4),
		(7, 'Engineering Econmy', 3, 2),
		(8, 'Dynamics', 3, 1);

		Select * From Students

		Select * From Courses


		Create Table Students_Courses
		(
		 StudentID int ,
		 CourseID int ,
		 Primary Key (StudentID, CourseID),
		 Foreign Key (StudentID) References Students (ID),
		 Foreign Key (CourseID) References Courses (ID),

		);

		
		Insert Into Students_Courses (StudentID, CourseID)
		Values (1,1),
		       (2,3),
			   (3,4),
			   (4,5),
			   (5,1),
			   (1,4),
			   (4,3),
			   (5,2);

		Select * From Students_Courses




