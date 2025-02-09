USE Library;

CREATE TABLE Books 
(
BookID int Primary Key,
Title Varchar (200) Not Null,
AuthorID int Not Null,
PublishedYear int Not Null,
CopiesAvailable int Not Null,
BookCategory  Varchar (100) Not Null
);


CREATE TABLE Authors 
(
AuthorID int primary key,
FirstName varchar(100) Not Null,
LastName varchar (100) Not Null,
BirthYear int Not Null
);


Insert Into Books (BookID, Title, AuthorID, PublishedYear, CopiesAvailable, BookCategory)
Values
 (1, 'Foundation', 1, 2005, 10, 'Engineering'),
 (2, 'Calculus', 2, 2015, 7, 'Mathmatics'),
 (3, 'Atomic Habits', 3, 2018 , 9, 'Self Help'),
 (4, 'Fluid Mechanics', 4, 2017 , 13, 'Engineering'),
 (5, 'Risk Management', 5, 2013 , 15, 'Management');

 Select * From Books;

 Insert Into Authors (AuthorID, FirstName, LastName, BirthYear)
 Values 
 (1, 'Ralph', ' B. Peck', 1912),
 (2, 'James', ' Stewart', 1941),
 (3, 'James', ' Clear', 1986),
 (4, 'Frank', ' M. White', 1933),
 (5, 'Patrick', ' Roberts', 1990);


 Select * From Authors

 Select Title, CopiesAvailable
 From Books
 Where CopiesAvailable =(Select MAX(CopiesAvailable) From Books )
 or CopiesAvailable = (Select MIN (CopiesAvailable) From Books );


 Select AVG (Cast (PublishedYear As Float ) ) As AveragePublicationYear FROM Books;

 Select Sum (CopiesAvailable) As NumberOfBooks From Books;

 Delete From Books;

 Drop Table Books;

 Alter Table Authors
 Add Email  varchar (100) ,
  PhoneNumber varchar (30);

  UPDATE Authors
SET Email = 'Ralph@gmail.com', PhoneNumber = '+777777777'
WHERE AuthorID = 1;

UPDATE Authors
SET Email = 'James@gmail.com', PhoneNumber = '+888888888'
WHERE AuthorID = 2;

UPDATE Authors
SET Email = 'James@gmail.com', PhoneNumber = '+999999999'
WHERE AuthorID = 3;

UPDATE Authors
SET Email = 'Frank@gmail.com', PhoneNumber = '+66666666'
WHERE AuthorID = 4;

UPDATE Authors
SET Email = 'Patrick@gmail.com', PhoneNumber = '+1444555666'
WHERE AuthorID = 5;

Drop Table Authors;
