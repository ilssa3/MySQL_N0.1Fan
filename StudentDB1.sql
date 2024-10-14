/*create database booking_ilsA;
show databases;
drop database booking_ilsA;*/ 
use booking_ilsA;
create table Students(ID int not null primary key auto_increment,
Names varchar(50));
load data infile 'C:\\Users\\XI_A\\Desktop\\Sudents.csv'
into table Students fields terminated by ',';
select*from Students;

create table agency (
 name varchar(20) not null primary key, 
 city varchar(50),
country varchar (2),
 ph varchar(10));
 
create table client (
egn varchar(10)not null primary key,
 name varchar(50),
 ph varchar(10),
email varchar(20));

create table booking (
agencyName varchar(20) not null references agency(name), 
clientEgn varchar(10) references client(egn),
bookingDate date, 
status char(1),
primary key (agencyName , clientEgn));

insert into agency( name , city ,country , ph )values ('NewAgency','Sofia','BG','0281931221') ;
insert into agency( name , city ,country , ph )values ('AgencyNew','Sofia',' ','0281931222') ;
insert into agency( name , city ,country , ph )values ('AgencyNovel','Paris',null,'0899824354') ;
insert into client (egn, name, ph, email) values ('7702031111', 'Ivan Ivanov', '022121232','ivanov@mymail.bg');

update client set email = 'ivan@mymail.bg' where egn = '7702031111';
update agency set country ='FR' where city ='Paris';
update agency set ph = '0888112233' where name = 'AgencyNew';

delete from agency where name = 'AgencyNovel';
 delete from client where egn = '7702031111';
delete from agency ;




















