create database Mobile_Operator;
use Mobile_Operator;

 create table Towns
(ID int auto_increment not null primary key,
Name varchar(50));

 create table Employees
(ID int auto_increment not null primary key,
FirstName varchar(50),
MiddleName varchar(50),
LastName varchar(50),
EGN int(10),
JobTitle varchar(100),
Salary double,
HireDate date,
ManagerID int,
TownID int , foreign key (TownID) references Towns(ID));

 create table SubPlan
(ID int auto_increment not null primary key,
 Name varchar(50),
 Price double,
 IcludedMinutes int,
 IncludedMessages int,
 IncludedData int);
 
 create table Customers
(ID int auto_increment not null primary key,
FirstName varchar(50),
LastName varchar(50),
SubPlanID int,
ContactNumber int(10),
TownID int,
Adress varchar(100),
foreign key (SubPlanID) references SubPlan(ID),
foreign key (TownID) references Towns(ID));

 create table Contacts
(ID int auto_increment not null primary key,
Number int (10),
StartingDate date,
Duration int,
CustomerID int,
foreign key (CustomerID) references customers(ID)
 );
 
  create table AdditionalPackages
(ID int auto_increment not null primary key,
Name varchar (50),
Discription varchar (100),
Price double);

 create table CustomerAdditionalPackages
 (CustomerID int ,foreign key(CustomerID)references Customers(ID),
 PackageID int , foreign key (PackageID)references AdditionalPackages(ID));
