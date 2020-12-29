create database HostelManagement;
use HostelManagement;
create table Hostel_login (
studentid int,
studentname varchar (70),
studentpassword varchar (90),
studentstatus varchar(80),
Primary key (studentid));

insert into Hostel_login(studentid,studentname,studentpassword,studentstatus)
values
(21,'hassan','hassan123','active'),
(22,'noman','nomi3','active'),
(23,'asad','pakistan786','non active');

create table Hostel(
Hostelid int,
Noofrooms int, 
Noofstudents int,
Location varchar(90),
primary key (Hostelid));
insert into Hostel(Hostelid,Noofrooms, Noofstudents,Location)
values
(321,25,50,'complex abbotabbad'),
(322,30,60,'Mansehra'),
(323,15,40,'Damtorh');
Select * from Hostel;

create table Floor (
Floorid int,
Floornumber int ,
Floorname varchar(90) ,
Floorstatus varchar(90),
primary key (Floorid));
insert into Floor(Floorid,Floornumber,Floorname ,Floorstatus)
values 
(221,5,'shaheen','Availble'),
(222,6,'iqbal','Availble'),
(223,7,'quid','Not Availble');
Select * from Floor;

create table HostelBlock(
Blockid int,
Blocknumber int,
Blockname varchar(70),
Blockstatus varchar(70),
Primary key (Blockid));
insert into HostelBlock(Blockid ,Blocknumber ,Blockname ,Blockstatus)
values
(231,1,'salman','Availble'),
(232,2,'iqbal','Not Availble'),
(233,3,'quid','Availble');
select * from HostelBlock;

Create table HostelRoom(
Hostelid int,
Room_id int,
Room_number int,
Room_block_name varchar (90),
Room_floor_name varchar (90),
Room_capacity varchar (90),
Room_status varchar (90),
primary key (Room_id),
Foreign key (Hostelid)  REFERENCES Hostel(Hostelid));

insert into HostelRoom(Hostelid,Room_id,Room_number,Room_block_name ,Room_floor_name ,Room_capacity ,Room_status)
values
(321,51,44,'salman','shaheen','2 Seater', 'Availble'),
(322,52,45,'iqbal','iqbal','single Seater','Not Availble'),
(323,54,46,'quid','quaid','3 Seater','Availble');
select * from HostelRoom;

Create table Ground(
Hostelid int,
Groundid int,
Groundname varchar (70),
Groundblockname varchar(80),
Groundrent float,
Groundstatus Varchar(80),
Groundtimming varchar(90),
primary key (Groundid),
Foreign key (Hostelid)  REFERENCES Hostel(Hostelid));

insert into Ground(Hostelid,Groundid,Groundname,Groundblockname,Groundrent,Groundstatus,Groundtimming)
values
(321,1,'football','salman',5000,'Availble','9:00 AM to 4:00 PM'),
(322,2,'cricket','iqbal',10000,'Not Availble','9:00 AM to 8:00 PM'),
(323,3,'hockey','quaid',12000,'Availble','11:00 AM to 3:00 PM');
select * from Ground;


create table furniture(
Hostelid int,
Furniture_id int ,
Furniture_type varchar(90),
Room_No int,
primary key (Furniture_id),
Foreign key (Hostelid)  REFERENCES Hostel(Hostelid));
insert into furniture(
Hostelid,
Furniture_id,
Furniture_type,
Room_No)
values 
(321,25,'Metras',51),
(322,30,'Metras',52),
(323,15,'Bed',54);
select * from furniture;

create table attendance(
Studentid int,
Student_name varchar(90),
Attendance_date date,
Attendance_time Varchar(90),
Attendance_status varchar (90),
primary key (Studentid));
insert into attendance(
Studentid,
Student_name,
Attendance_date,
Attendance_time,
Attendance_status)
values
(1,'issam','2020-5-24','9:00 AM','present'),
(2,'mahnoor','2020-5-24','8:00 AM','present'),
(3,'bilal','2020-5-24','8:45 AM','Absent');
select * from attendance;


create table visitor(
Visitorid int,
Visitorname varchar (90),
Visitorphonenumber varchar(90),
Visitorrelation varchar(90),
Visitdate date,
Entrytime varchar (90),
Leavingtime varchar(90),
primary key (Visitorid));

insert into visitor(
Visitorid,
Visitorname,
Visitorphonenumber,
Visitorrelation,
Visitdate,
Entrytime ,
Leavingtime)
values 
(1,'hassan','03070751356','brother','2020-5-24','4:00 PM','4:30 PM'),
(2,'abbasi','03493004173','father','2020-6-4','3:00 PM','3:30 PM'),
(3,'bukhari','03100917499','brother','2020-8-19','2:00 PM','3:00 PM');
Select * from visitor;

create table staff(
Hostelid int,
Staffid int,
Staffname varchar(90),
Staffaddress varchar(90),
Staffsalary float,
Staffphoneno varchar(90),
Staffdesignation varchar(90),
primary key (Staffid),
Foreign key (Hostelid)  REFERENCES Hostel(Hostelid));
insert into staff(
Hostelid,
Staffid,
Staffname,
Staffaddress,
Staffsalary,
Staffphoneno,
Staffdesignation)
values
(321,1,'aman','abbotabbad',50000,'03159577102','clerk'),
(322,2,'salman','peshawar',60000,'03100917799','warden'),
(323,3,'haris','multan',70000,'03159777112','manager');
select * from staff;

create table Student_information(
Hostelid int,
Room_id int,
Studentid int,
Studentname varchar(90),
Studentgender varchar(90),
StudentDob varchar(90),
Studentaddress varchar(90),
Studentcontactnumber varchar(90),
Studentemail varchar(90),
Studentfathername varchar(90),
Parentscontactnumber varchar(90),
Studentdepartment varchar(90),
primary key (Studentid),
Foreign key (Hostelid)  REFERENCES Hostel(Hostelid),
foreign key (Room_id) REFERENCES HostelRoom(Room_id));

insert into Student_information(
Hostelid,
Room_id,
Studentid,
Studentname,
Studentgender,
StudentDob,
Studentaddress,
Studentcontactnumber,
Studentemail,
Studentfathername,
Parentscontactnumber,
Studentdepartment)
values

(321,51,44,'salman','male','2000-6-4', 'lahore','03129877102','salman@gmail.com','bukhari','03159567187','physics'),
(322,52,45,'iqbal','male','1999-6-4','multan','03169567102','iqbal12@yahoo.com','syed','03099567165','biology'),
(323,54,46,'hassan','male','1998-6-4','pindhi','03119557302','hassan32@hotmail.com','iqbal','03169567155','databse');
Select * From Student_information;


create table Student_Expenses(
Studentid int,
Studentname varchar (90), 
Roomnumber varchar (90), 
Roomrent float,
Roommess float,
ExpensesDate varchar (90), 
Otherexpenses float,
Studentfine float,
Totalexpenses float,
primary key (Studentid));
insert into Student_Expenses(
Studentid,
Studentname, 
Roomnumber, 
Roomrent,
Roommess,
ExpensesDate, 
Otherexpenses,
Studentfine,
Totalexpenses)
Values
(32,'noman','5D',5000,3500,'2020-6-4',7600.65,600,16700.65),
(33,'asad','6C',4000,3500,'2020-12-7',6600,600,14700),
(34,'salman','9E',5500,3500,'2020-8-8',7000,1000,17000);
select * from Student_Expenses;


create table student_Fee(
Hostelid int,
Studentid int,
Studentname varchar(80),
Feemonthly float,
Feestatus varchar(80),
Remainingdues float,
Messfee float,
primary key (Studentid),
Foreign key (Hostelid)  REFERENCES Hostel(Hostelid));

insert into student_Fee(
Hostelid,
Studentid,
Studentname,
Feemonthly,
Feestatus,
Remainingdues,
Messfee)
values
(321,1,'aman',27000,'Paid',67000,3500),
(322,2,'salman',26000,'UnPaid',68000,3000),
(323,3,'sonu',37000,'Paid',57000,4000);
select * from student_Fee;