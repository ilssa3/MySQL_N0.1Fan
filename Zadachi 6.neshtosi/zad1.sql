create database zadacha1;
create table Klienti( EGN varchar (10) not null primary key , name varchar(50));

create table Smetki(nomer varchar (10) not null primary key , type varchar(50), balance int (50), EGN varchar(50),
FOREIGN KEY (EGN) references Klienti(EGN));

create table Adresi(grad varchar(50), kod int not null primary key , EGN varchar (10),FOREIGN KEY (EGN) references Klienti(EGN) );

create table Telefoni( kod int , nomer varchar (10), EGN varchar(10),
FOREIGN KEY (kod) references Adresi(kod),FOREIGN KEY (nomer) references Smetki(nomer),FOREIGN KEY (EGN) references Klienti(EGN));

insert into Klienti( EGN  , name ) values('3333388888', 'Pavel Pavlov');
insert into Klienti( EGN  , name ) values('2369754102', 'tOSHO tOSHEV');

insert into Smetki( nomer  , type, balance , EGN ) values('0896325478', 'card', 500000,'3333388888' );
insert into Smetki( nomer  , type, balance , EGN ) values('0963696325', 'card', 63636, '2369754102');

insert into Adresi(grad , kod  , EGN ) values ('Ravda' , '33' , '3333388888');
insert into Adresi(grad , kod  , EGN ) values ('General Toshevo' , '339' , '2369754102');

insert into Telefoni(kod  , nomer , EGN ) values ('33','0896325478','3333388888');
