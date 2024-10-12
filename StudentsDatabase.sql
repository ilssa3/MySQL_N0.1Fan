create database Students;
create table Student( ID int primary key not null , Name varchar (50));
LOAD DATA INFILE 'C:\\Users\\ilian\\Desktop\\Book1.csv' into table Student fields TERMINATED BY ',';

create table Agency(Name varchar(50) primary key not null ,
City varchar (50), Country varchar(50), Tel varchar(50));

create table Client(Egn int(10) primary key not null,Name varchar(50),Tel varchar(50));

create table Booking(Agency_name varchar(50), Client_egn int(10),
FOREIGN KEY(Agency_name) REFERENCES Agency(Name), FOREIGN KEY(Client_egn) REFERENCES Client(Egn));