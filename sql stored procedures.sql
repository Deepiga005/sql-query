create database DBproceed;
use DBproceed;
show databases;
desc cars;
create table cars (make varchar(100), model varchar(100), year bigint, value decimal(10,2));
insert into cars values('porche','911 gt3',2020,169700);
insert into cars values('ferari','gt4',2017,118000);
insert into cars values('audi','panmera',2015,113200);
insert into cars values('bmw','macan',2019,224700);
insert into cars values('jaguar','cayman',2021,488000);
insert into cars values('ferari','488 gtb',2017,254700);
select * from cars;
/* stored procedure without parameters */
DELIMITER //
CREATE PROCEDURE get_all_cars( )
BEGIN
 SELECT * FROM cars order by make, value desc;
 end //
 DELIMITER ;
 call get_all_cars();
 /*stored procedure with input parameter*/
 DELIMITER //
 CREATE PROCEDURE get_cars_by_year22(
  in year_filters int, in model_make varchar(40)
  )
BEGIN
SELECT * FROM cars where year = year_filters
 and model = model_make order by make, value desc;
 end//
 DELIMITER ;
 Call get_cars_by_year22(2015,'panmera');
 /*STORED PROCEDURE WITH LOCAL VARIABLES IN OUT*/
 DELIMITER //
 CREATE PROCEDURE get_car_strt_by_year23(
  in year_filter int,
  out cars_number int,
  out min_value decimal(10,2),
  out avg_value decimal(10,2),
  out max_value decimal(10,2)
  )
  begin
   select count(*), min(value), avg(value), max(value)
   into cars_number,min_value,avg_value,max_value
   from cars
   where year = year_filter order by make, value desc; 
   end //
   DELIMITER ;
   call get_car_strt_by_year23(2017, @number,@min, @avg, @max );
   select @number ,@min, @avg, @max;
   select * from cars;

   