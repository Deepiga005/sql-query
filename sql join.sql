create database DBstudent;
show databases;
use DBstudent;
create table studenttable(roll_no int primary key, studname varchar(25),address varchar(25),phone int(25), age int);
select * from studenttable;
insert into studenttable values(1,'mano','nkl',969258155,25);
insert into studenttable values(2,'karan','chee',969200000,32);
insert into studenttable values(3,'darani','madu',969000000,27);
insert into studenttable values(4,'hasini','tric',900000000,30);
insert into studenttable values(5,'arah','karur',960000000,24);
desc studenttable;


create table newstudentcourse(stu_id int ,course_id int primary key ,roll_no int,foreign key (roll_no) references studenttable (roll_no) ,coursename varchar(25), coursefee int);
desc newstudentcourse;
select * from newstudentcourse;
insert into newstudentcourse values (1,123,1,'JavaFS',50000);
insert into newstudentcourse values (2,100,2,'Python',45000);
insert into newstudentcourse values (3,200,3,'DA',30000);
insert into newstudentcourse values (4,300,4,'ST',35000);
insert into newstudentcourse values (5,400,5,'ML',40000);

/*inner join*/
select newstudentcourse.course_id,studenttable.studname
from studenttable
inner join newstudentcourse
on newstudentcourse.stu_id=studenttable.roll_no 
order by newstudentcourse.course_id; 

/*inner join*/
select newstudentcourse.course_id,studenttable.studname
from studenttable
inner join newstudentcourse
on newstudentcourse.stu_id=studenttable.roll_no 
order by newstudentcourse.roll_no;

/*LEFT OUTER JOIN*/
Select  studenttable.studname,newstudentcourse.course_id
from  studenttable left outer join newstudentcourse on
newstudentcourse.stu_id=studenttable.roll_no
order by newstudentcourse.course_id;

/* RIGHT JOIN*/
select studenttable.studname,studenttable.age,newstudentcourse.course_id
from studenttable 
right join newstudentcourse on
newstudentcourse.stu_id=studenttable.roll_no; /*ucan use orderby here with age.../





















































































