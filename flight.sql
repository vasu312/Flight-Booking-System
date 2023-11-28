create table user(
username VARCHAR(20) primary key,
password VARCHAR(20)
);

insert into user values("vas","vs544");

	SELECT* from user;

SELECT * from employee1;

alter table employee1 add column salary int;

update students1 set name ="ss",mark1=99,mark2=77,mark3=77 where rollno=873298;

create table students1(
rollno INT8 primary key,	
name varchar(20),
mark1 INT4,
mark2 INT4,
mark3 INT4);

select * from students1;


create DATABASE Hospitaldb;

create table user(
uname VARCHAR(20) primary key,
password VARCHAR(20)
);

insert into user values("Abdul","9898");
create table doctor(
id INTEGER primary key,
name VARCHAR(20),
Specialization_id INTEGER,
CONSTRAINT specid FOREIGN KEY(Specialization_id) REFERENCES Specialization(id)
);
SELECT * from doctor;
Select * from patient;
create table patient(
patient_id INTEGER primary key,
name VARCHAR(20),
Doctor_id INTEGER,
CONSTRAINT docid FOREIGN KEY(Doctor_id) REFERENCES doctor(id)
);


select * from doctor d join
			Specialization s on d.Specialization_id = s.id ;
			

create table Specialization(
id INTEGER primary key,
Specialization VARCHAR(20)
);

select * from Specialization;

INSERT into Specialization values(13,"Physio");

create Database BookDb;

create table category(
id INTEGER primary key,
bookcat VARCHAR(20));

create table book(
bookid VARCHAR(20)primary key,
bookname VARCHAR(50),
quantity INTEGER,
bookcat VARCHAR(20),
price INTEGER
);

select password from user where uname="iucgiu";

select * from book;
select * from category;

insert into category VALUE(109,"Cooking");
-- Humor
-- Novel
-- Health
-- Travel
-- Motivational
-- Art
-- Encyclopedia
-- Biography
-- Cooking



create database cardb;

 

create table car(
custid varchar(10) primary key,
custname varchar(20),
mobno varchar(10),
gender varchar(10),
custcity varchar(25),
brand varchar(20),
fuel_or_trans varchar(20),
budgetupto varchar(20)
);

create table cars(
car_id INTEGER primary key,
brand_name VARCHAR(20),
model_name VARCHAR(20),
priceInLak int,
fuel VARCHAR(20),
mileage int,
seat_cap int
);

INSERT INTO cars VALUES (1,'Toyota', 'Camry', 25000, 'Gas', 28, 5);
INSERT INTO cars VALUES (2,'Honda', 'Civic', 22000, 'Gas', 32, 5);
INSERT INTO cars VALUES (3,'Ford', 'F-150', 35000, 'Gas', 20, 3);
INSERT INTO cars VALUES (4,'Tesla', 'Model 3', 45000, 'Electric', 150, 5);
INSERT INTO cars VALUES (5,'Nissan', 'Altima', 24000, 'Petrol', 30, 5);

INSERT INTO cars  VALUES (6,'Chevrolet', 'Cruze', 23000, 'Diesel', 29, 5);
INSERT INTO cars  VALUES (7,'Audi', 'A4', 40000, 'Gas', 27, 5);
INSERT INTO cars  VALUES (8,'BMW', 'X5', 60000, 'Diesel', 22, 5);
INSERT INTO cars  VALUES (9,'Hyundai', 'Sonata', 22000, 'Gas', 31, 5);
INSERT INTO cars  VALUES (10,'Mercedes-Benz', 'E-Class', 55000, 'Electric', 28, 5);

select * from cars; 

create table Product(
    CmpCode varchar(10),
    ProdCode varchar(50) ,
    ProdHierLvlCode int,
    ProdHierValCode varchar(50),
    ProdName varchar(100),
    ProdShortName varchar(100),
    ProdCompCode varchar(50),
    StockCovDays int,
    ProdNetWgt decimal(9, 3),
    ProdWgtType char(2),
    ProdType char(1),
    EANCode varchar(15),
    MRP decimal(22, 6),
    IsActive char(1),
    IsDrugProduct char(1),
    ShelfLife int,
    IsSerialNoExist char(1),
    IsSecondSerialNoExist char(1),
    IsSecondSerialNoMandatory char(1),
    ProductHierPath varchar(450),
    ModUserCode varchar(50),
    ModDt datetime,
    CreatedDate datetime
);

truncate table Product;
select * from Product;
update Product set mrp =0 ;
create table distr(
CmpCode varchar(10),
DistrCode varchar(50),
DistrName varchar(100)
);
select * from distr;
select * from distr where DistrCode like '2000000036';

TRUNCATE table distr;

Create database CiplaProd;
create table Product(
    CmpCode varchar(10),
    ProdCode varchar(50) ,
    ProdHierLvlCode int,
    ProdHierValCode varchar(50),
    ProdName varchar(100),
    ProdShortName varchar(100),
    ProdCompCode varchar(50),
    StockCovDays int,
    ProdNetWgt decimal(9, 3)
);
create table ProductBatch(
    CmpCode varchar(10),
    ProdCode varchar(50),
    ProdBatchCode varchar(50),
    ManfDate varchar(20),
    ExpiryDate varchar(100),
    IsActive char(1),
    BatchDate varchar(50),
    EffectiveFromDate varchar(50),
    PurchasePrice decimal(22, 6),
    MRP decimal(22,9),
    primary key(ProdCode,ProdBatchCode)
);

select * from Product;
select * from ProductBatch;

Create Database Pharmacy;

create table pharmabatch(
BatchCode Varchar(20) PRIMARY key,
MedicineCode Varchar(20),
Weight VARCHAR(20),
Price VARCHAR(20),
MedicineType VARCHAR(20),
Refrigeration VARCHAR(20)
);
select * from pharmabatch;

insert into user values("Abdul","abd46");
SELECT* from user;

INSERT INTO pharmabatch VALUES ('ABC123', 'MED001', '100 mg', '25.99', 'Tablet', 'No');

INSERT INTO pharmabatch VALUES ('DEF456', 'MED002', '50 mg', '15.50', 'Capsule', 'Yes');

INSERT INTO pharmabatch VALUES ('GHI789', 'MED003', '75 ml', '20.75', 'Syrup' , 'Yes');

INSERT INTO pharmabatch VALUES ('JKL012', 'MED004', '200 ml', '30.00', 'Syrup','Yes');

INSERT INTO pharmabatch VALUES ('MNO345', 'MED005', '150 mg', '18.75', 'Capsule', 'Yes');

INSERT INTO pharmabatch VALUES ('VWX294', 'MED008', '180 mg', '28.50', 'Tablet','No');
update pharmabatch set MedicineCode ='MED001',Weight='100 mg',Price='25.991'
,MedicineType='Tablet',Refrigeration='No' where BatchCode='ABC123';


select DISTINCT MedicineCode from pharmabatch;

-- pms
-- 1)manager name dept name
select Manager_Name,DEPARTMENT_NAME from PMS_MANAGER_DETAILS pmd join 
PMS_DEPARTMENT_DETAILS pdd on pmd.DEPARTMENT_ID = pdd.DEPARTMENT_ID;
-- 2)product name Dept name
select PRODUCT_NAME,DEPARTMENT_NAME from PMS_PRODUCT pp join PMS_DEPARTMENT_DETAILS pdd
on pp.DEPARTMENT_ID=pdd.DEPARTMENT_ID;
-- 3)product name unit name
select PRODUCT_NAME,UNIT_NAME from PMS_PRODUCT pp join PMS_PRODUCT_UNIT ppu
on pp.PRODUCT_ID = ppu.PRODUCT_ID join PMS_UNIT_DETAILS pud on pud.UNIT_ID = ppu.UNIT_ID;

-- banking 
-- 1)cust by occ
select concat(fname,' ',mname,' ',ltname) from customer where occupation = 'Service';

-- 2)cust by city
select concat(fname,' ',mname,' ',ltname) from customer where city = 'Chennai';
-- 3)cust name branch name branch city

select concat(fname,' ',mname,' ',ltname), bname, bcity from customer c 
join account a on c.custid= a.custid join branch b on a.bid=b.bid;

-- ems
-- 1) list emp who joined after 1990 sal > 10k
select first_name from employees where  year(hire_date) >1999 and salary > 10000;
-- 2) emp n and dept n
select first_name,department_name from employees e join departments d on e.department_id= d.department_id;
-- 3) emp n who worked more than 5 years
select DISTINCT first_name from employees e join JOB_HISTORY j on e.employee_id=j.EMPLOYEE_ID where year(END_DATE)- year(START_DATE)>=1;

create table roles(
id int primary key,
name varchar(20)
);

insert into roles values(4,'Supervisor');
select * from roles;


create database fligthTicket_Booking; 	

create table user(
name varchar(20),
password varchar(20)
);

insert into user values("Abdul","1234");
-- Table for storing Customer Information
create table userDetails(
CustomerId varchar(20) primary key,
name varchar(20),
Email varchar(30) ,
Password varchar(20),
reType_password varchar(20),
Date_of_Birth varchar(20),
Address varchar(50),
Gender varchar(20),
Phone varchar(10),
SSN_Type varchar(20),
SSN_Number int
);
select * from userDetails;
truncate table userDetails;

alter table userDetails add column CustomerId varchar(20);




-- Table for storing Booking Information
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    CId varchar(20) NOT NULL,
    FlightID INT NOT NULL,
    BookingDate DATE NOT NULL,
    TotalPrice DECIMAL(10, 2) NOT NULL,
    SeatsToBook INT NOT NULL,
    FOREIGN KEY (CId) REFERENCES userDetails(CustomerId),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

-- Table for storing Flight Information
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    LeavingFrom VARCHAR(255) NOT NULL,
    GoingTo VARCHAR(255) NOT NULL,
    DepartureDate DATE NOT NULL,
    DepartureTime TIME NOT NULL,
    AvailableSeats INT NOT NULL,
    AirlineName VARCHAR(255) NOT NULL
);
truncate table Bookings;
-- Table for storing Cancellation Information
CREATE TABLE Cancellations (
    CancellationID INT PRIMARY KEY,
    BookingID INT NOT NULL,
    CancellationDate DATE NOT NULL,
    JourneyDate DATE NOT NULL,
    FromLocation VARCHAR(255) NOT NULL,
    ToLocation VARCHAR(255) NOT NULL,
    NoOfSeats INT NOT NULL,
    TotalFare DECIMAL(10, 2) NOT NULL,
    CancellationCharge DECIMAL(10, 2) NOT NULL,
    RefundableAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);


INSERT INTO Flights (LeavingFrom, GoingTo, DepartureDate, DepartureTime, AvailableSeats, AirlineName) 
VALUES 
('New York', 'London', '2023-12-01', '14:30', 150, 'ABC Airlines'),
('London', 'Paris', '2023-12-02', '16:45', 120, 'XYZ Airways'),
('Paris', 'Rome', '2023-12-03', '10:15', 100, 'Travel Express');

INSERT INTO Flights (LeavingFrom, GoingTo, DepartureDate, DepartureTime, AvailableSeats, AirlineName) 
VALUES 
('Los Angeles', 'Tokyo', '2023-12-05', '18:00', 180, 'Pacific Airlines'),
('Tokyo', 'Sydney', '2023-12-08', '20:30', 200, 'Oceania Airways'),
('Sydney', 'Singapore', '2023-12-10', '12:45', 150, 'Asia Pacific Airlines'),
('Singapore', 'Dubai', '2023-12-12', '22:15', 170, 'Arabian Skies Airlines');

INSERT INTO Bookings (CustomerID, FlightID, BookingDate, TotalPrice, SeatsToBook) 
VALUES 
(1, 1, '2023-11-05', 350.00, 2);


select *  from Flights where LeavingFrom = 'London' and GoingTo = 'Paris' and DepartureDate = '2023-12-02'
and DepartureTime = '16:45:00' and AvailableSeats > 5;

select * from Bookings;

select BookingID,name, AirlineName,LeavingFrom, GoingTo, DepartureDate, 
DepartureTime,BookingDate,TotalPrice,SeatsToBook from userDetails u join Bookings b 
on u.CustomerId=b.CId join Flights f on b.FlightID = f.FlightID where BookingID=34363;      


select BookingID,BookingDate,DepartureDate,LeavingFrom,GoingTo,SeatsToBook,TotalPrice
from Bookings b join Flights f on b.FlightID = f.FlightID where BookingID =32454;






