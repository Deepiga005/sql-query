create database DBworkers;
show databases;
use DBworkers;
create table details(workwer_id int(30) auto_increment primary key,identity varchar(25)not null, deprtmnt varchar(25),age int );
desc details;
show tables;
insert into details(workwer_id,identity,deprtmnt,age) values(1,"Deepa","web devlpmnt",26);
select * from details;
insert into details values(2,"rai","Aws",25);
insert into details values(3,"anbu","data analytics",23);
insert into details values(5,"shalini","cloud computing",22);
insert into details values(4,"iniyan","full stack",24);
 
 select * from details where workwer_id>1  not in("Aws","full stack");
 select * from details where workwer_id>1  and deprtmnt in ("Aws","full stack"); 
 select * from details where workwer_id>1  and (identity like 'a%'); 
 select * from details where workwer_id>1  and (identity like 'a%'or  identity like '%i'); 
 select * from details where workwer_id is not null;
 select * from details where workwer_id is null;
 
select workwer_id,identity,age from details where age=(select max(age) from details);

select workwer_id,identity from details where exists(select * from details where workwer_id>1);

 select min(age) as workerage from details;
 select max(age) as workerage from details;
 select count(workwer_id) as wrkcount from details;
 select sum(workwer_id) as total from details;
 select avg(age) from details;
 select avg(workwer_id) from details where workwer_id + 2;
 select * from details order by age desc;
 select * from details order by workwer_id desc; 
 select * from details limit 3;
 select * from details  where age not in (20,29); 
 select * from details where age between 20 and 26;
 select * from details where age not  between 20 and 26;
 select * from details where age  between 20 and 26 and workwer_id not in (1,2);
 select * from details where identity like 'a%';
 select * from details where identity like '%a';
select * from details where identity like '_e%'; 
select * from details where identity like '%ini%';
select * from details where identity like '%a___';
select * from details where identity like 's%i'; 
select distinct deprtmnt from details;
select count(distinct deprtmnt) from details;
select workwer_id,deprtmnt,if(workwer_id>2,"the id is greater than 2","the id is not greater than 2") from details;
delete from details where workwer_id=1;
 //delete from details;/ for deleting table on a whole //
 delete from details where workwer_id in (1,2);
 
 
 
update details set age=39 where workwer_id=3;
update details set age=39 , deprtmnt='cloud-compute' where workwer_id=3;
rollback;
select * from details;







select curdate();
select current_time();
select current_user();
select current_date();
select current_date()+ interval(2) day;
select current_date()+ interval(2) week;
select datediff("2025-02-09","2025-02-05");


create database DBinfo;
show databases;
use DBinfo;
create table Empnew(Emp_id int auto_increment primary key , Empname varchar(30)not null,Empage int); 
desc Empnew;
show tables;
insert into Empnew(Emp_id,Empname,Empage)values(1,"anu",21);
insert into Empnew(Emp_id,Empname,Empage)values(2,"brindha",22);
insert into Empnew(Emp_id,Empname,Empage)values(4,"chan",24);
insert into Empnew(Emp_id,Empname,Empage)values(3,"delip",26);
insert Empnew values(5,"eliza",23);
alter table Empnew add Empsalary float(25);
select * from Empnew;

select * from Empnew where Empname between'brindha' and 'eliza' order by Empname,Emp_id; 
select * from Empnew where Empage in('24');
select * from Empnew where Empage not in('24');

alter table Empnew modify Empsalary double;
alter table Empnew drop Empsalary;
alter table Empnew rename column Empages to Empagees;
alter table Empnew rename to Emppneww;

select Empname from Empnew group by Emp_id; 
select count(Emp_id) as no_of_workers,Empname from Empnew group by Empname; 
select count(Emp_id) as workers from Empnew group by Empname ;

select Emp_id,Empname from Empnew where Empage=(select max(Empage)from Empnew);
select Emp_id,Empname from Empnew where Empage=(select min(Empage)from Empnew);

select * from Empnew 
where Empname in (select Empname from Empnew where Empname like 'B%');






create database DBcricket;
show databases;
use DBcricket;
create table ma

