/*
CREATE TABLE Admin(
AdminID int IDENTITY(1001,1) NOT NULL PRIMARY KEY,
Admin_FirstName varchar (50) NOT NULL,
Admin_LastName varchar (50) NOT NULL,
Admin_Password varchar(15) not null,
Admin_Address varchar(50) not null,
Admin_Phone  varchar(11) not null,
Admin_Email varchar(30) not null
)*/

/*
INSERT INTO Admin
VALUES ('Faiyaz', 'Abir', '123abc', 'banani', '01835975321','abir@gmail.com'),
('Sanzida', 'Sabrin', '1234abc', 'gulshan', '01835976721','sanzida@gmail.com'),
('Nafisa', 'Binte','12374abc', 'banani', '01835976791','nafisa@gmail.com' ),
('Effendi', 'Hoissen','123574abc', 'mirpur', '01835976790','effendi@gmail.com');*/


select * from Admin;


--2
--CREATE TABLE Users(

--UserId Int IDENTITY(2001,1) NOT NULL PRIMARY KEY,
--User_FirstName	Varchar(50)	Not Null,
--User_LastName	Varchar(50)	Not Null,
--User_Password	Varchar(15)	Not Null,
--User_Address	Varchar(50)	Not Null,
--User_PhoneNo	Varchar(11)	Not Null,
--User_Email	    varchar(30)	Not Null,
--User_DateofBirth	Date Null
--)

--INSERT INTO Users
--VALUES ('Amy', 'Johnson', '1a23', 'Banani', '0176585684','amy@gmail.com','1992-04-27'),

--('Bill', 'Brown', '2a24', 'Bnosree', '0174585667','bill@gmail.com','1993-01-02'),
--('Janna', 'Smith', '8a23', 'Badda', '0177856590','janna@gmail.com','1994-03-24'),
--('Evette', 'zamy','6a23', 'linl_road', '0176578565','evette@gmail.com','1991-12-21'),
--('Drew', 'Brisco', '5a23', 'Gulshan', '0176578548','drew@gmail.com','1993-06-17');

select *from Users;

--3

--CREATE TABLE Employee(
--EmployeeID int IDENTITY(3001,1) PRIMARY KEY,
--Employee_FirstName varchar (50) NOT NULL,
--Employee_LastName varchar (50) NOT NULL,
--Employee_Password varchar(15) not null,
--Employee_Address varchar(50) not null,
--Employee_Phn  varchar(11) not null,
--Employee_email varchar(30) not null,
--Employee_DateofBirth date not null,
--Employee_Salary decimal not null,
--Employee_Shift varchar(20) not null,
--AdminID int not null foreign key references Admin(AdminID));


--INSERT INTO Employee
--VALUES ('ali', 'Abir', '12367abc', 'banani', '018358954','ali@gmail.com','2001-11-28','30000','day',1001),
--('alimas', 'kabir', '012367abc', 'badda', '018358087','kabir@gmail.com','2002-11-16','25000','night',1002),
--('joshim', 'uddin', '192367abc', 'mirpur', '0183593267','jashim@gmail.com','2001-11-30','15000','evening' ,1003),
--('shami', 'Akhter', '1236767abc', 'rampura', '018357890','shami@gmail.com','2000-09-28','28000','day',1004);

select *from  Employee;


--4
--CREATE TABLE  Prescription(
--PrescriptionId	Int IDENTITY(4001,1) NOT NULL PRIMARY KEY,
--Prescription_Date	Date	Not Null,
--UserId	Int not null foreign key References	Users(UserId),
--DoctorsName	Varchar (50)	Not Null,
--prescription_Medicine_Id	Int	Not NULL,
--prescription_Medicine_Name	Varchar(50)	Not NULL,
--Prescription_medicine_Amount Decimal	Not Null
--);

--INSERT INTO Prescription
--VALUES ('2023-01-01', 2001, 'jack', 1, 'napa_extra',12.00),
0
--       ('2023-01-11', 2002, 'jack', 2, 'abacavir',10.00),
--       ('2023-01-13', 2003, 'jonshon',3, 'clobazom',8.00),
--       ('2023-01-14', 2004, 'jemmi', 4, 'Enalapril',24.00);


	   select *from Prescription;


--5

--CREATE TABLE Orders(
--OrdersID int IDENTITY(6001,1) NOT NULL PRIMARY KEY,
--Orders_Price decimal(5,2) NOT NULL,
--Orders_Count INT NOT NULL,
--Orders_Date DATE not null,
--Orders_MedicineID INT not null,
--EmployeeID int not null foreign key references Employee(EmployeeID)
--);

--INSERT INTO Orders
--VALUES (300.00, 1, '2023-08-23', 1,3001),
--(250.00, 2, '2023-10-28', 2, 3002),
--(200.00, 3, '2023-09-29', 3, 3003),
--(150.00, 4, '2023-10-29', 4, 3004);

select *from Orders;

--6

--CREATE TABLE Supplier(
--SupplierID int IDENTITY(9001,1) NOT NULL PRIMARY KEY,
--Supplier_FirstName varchar (50) NOT NULL,
--Supplier_LastName varchar (50) NOT NULL,
--Supplier_Company varchar(50) not null,
--Admin_Phone  varchar(11) not null,
--Admin_email varchar(30) not null
--);

--INSERT INTO Supplier
--VALUES ('moli', 'Akhter', 'Beximco', '01835978021','moli@gmail.com'),
--('begum', 'Mia',  'Renata', '01835978078','begum@gmail.com'),
--('kaniz', 'fatema', 'ACI', '01835978075','kaniz@gmail.com'),
--('abbash', 'Ali', 'Square', '01835978043','ali@gmail.com');
       
	   SELECT * FROM Supplier

--7

--CREATE TABLE StockedMedicine 
--(
--	StockedMedicineId int IDENTITY(8001,1) PRIMARY KEY,
--	MedicineName varchar(50) NOT NULL,
--	MedicineCategory varchar(50) NOT NULL,
--	MedicinePrice decimal(5,2) NOT NULL,
--	MedicineQuantity int NOT NULL,
--	MedicineExpireDate Date NOT NULL
--);

--INSERT INTO StockedMedicine
--VALUES ('Napa','Paracetamol',1.50 , 2000 , '2025-12-15'),
--('Aquatear','Eyedrop', 75.30 ,200,'2026-11-16' ),

--('Flazil','Omiprazol',3.50 ,5000 , '2023-10-08' ),

--('Adovas','Cough',120 , 600, '2027-07-16');

select * from StockedMedicine

--DROP TABLE StockedMedicine

--8

--CREATE TABLE Cart
--(
--	CartId int IDENTITY(7001,1) PRIMARY KEY,
--	MedicineName varchar(50) NOT NULL,
--	MedicineAmount int NOT NULL,
--
--	UserId int NOT NULL FOREIGN KEY REFERENCES Users(UserId),

--);

--INSERT INTO Cart
--VALUES ('Napa',10 ,2001 ,8001 ),
--('Aquatear',1 ,2002 ,8002 ),
--('Flazil',23 ,2003 ,8003 ),
--('Adovas',2 , 2004, 8004);

select * from Cart
--DROP TABLE Cart
--9


--CREATE TABLE Invoice(
--InvoieId	int IDENTITY(101001,1)  PRIMARY KEY,
--OrdersId	int not null foreign key references Orders(OrdersId),
--Payment_Method	Varchar (30)	Not Null,
--Payment_Status	Varchar (30)	Not Null
--);

--INSERT INTO Invoice
--VALUES (6001,'card','paid'),
--(6002, 'bkash','paid'),
--(6003,'cash','paid'),
--(6004, 'bkash','not paid');

--select *from Invoice;


--select  count(UserId)  as Cusno from Users

--DROP TABLE Invoice
--drop table Orders



--CREATE TABLE Invoice(
--InvoieId	int  PRIMARY KEY,
--Price decimal(5,2) NOT NULL,
--Quantity int NOT NULL,
--Date date NOT NULL,
--UserId int not null foreign key references Users(UserId),
--Payment_Method	Varchar (30)	Not Null,
--Payment_Status	Varchar (30)	Not Null,
--);

--INSERT INTO Invoice
--VALUES (200.56, 25, '2023-12-25', 2001,'card','paid'),
--(200.56, 25, '2023-05-25',2002, 'bkash','paid'),
--(300.56, 30, '2023-08-25',2003,'cash','paid'),
--(400.56, 15, '2023-09-23',2004, 'bkash','not paid');

select *from Invoice;

drop table Invoice


--CREATE TABLE Cart
--(
--	CartId int ,
--	MedicineName varchar(50) NOT NULL,
--	MedicineAmount int NOT NULL,
--	TotalPrice decimal(7,2) NOT NULL ,
--	UserId int NOT NULL FOREIGN KEY REFERENCES Users(UserId),
--	StockedMedicineId int NOT NULL FOREIGN KEY REFERENCES StockedMedicine(StockedMedicineId)
--);

--INSERT INTO Cart
--VALUES (1,'Napa',10,200.56 , 2001 ,8001 ),
--(1,'Aquatear',1, 200.56 ,2001 ,8002 ),
--(1,'Flazil',23, 300.56 ,2001 ,8003 ),
--(1,'Adovas',2 ,400.56, 2001, 8004);

select * from Cart
select * from Invoice

--drop table Cart

select max(CartId) as mcart from Cart

Select * from Cart where CartId=1

select sum(TotalPrice) as totp from Cart where CartId = 1

select sum(TotalPrice) as tot from Cart where CartId=1

select count(CartId) as amnt from cart where CartId=1 

select  Cartid from cart where UserId=2002 and CartId in (select  distinct CartId from cart where UserId=2002)
select * from cart where CartId = 10

