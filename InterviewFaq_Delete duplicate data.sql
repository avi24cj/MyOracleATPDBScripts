--- Q1: Delete duplicate data --- 

drop table if exists cars;
create table cars
(
	model_id		int primary key,
	model_name		varchar(100),
	color			varchar(100),
	brand			varchar(100)
);
insert into cars values(1,'Leaf', 'Black', 'Nissan');
insert into cars values(2,'Leaf', 'Black', 'Nissan');
insert into cars values(3,'Model S', 'Black', 'Tesla');
insert into cars values(4,'Model X', 'White', 'Tesla');
insert into cars values(5,'Ioniq 5', 'Black', 'Hyundai');
insert into cars values(6,'Ioniq 5', 'Black', 'Hyundai');
insert into cars values(7,'Ioniq 6', 'White', 'Hyundai');

select * from cars;

select count(*),model_name from cars
group by model_name
having count(*)>1;

select MODEL_ID,MODEL_NAME,BRAND,rank() over(PARTITION BY model_name,brand ORDER BY MODEL_ID) from cars;

-- Approach 1

select * from cars where model_id not in
(select min(model_id) from cars group by cars.MODEL_NAME , cars.BRAND);

delete from cars where model_id not in
(select min(model_id) from cars group by cars.MODEL_NAME );

--Approach 2

select * from 
(select MODEL_ID,MODEL_NAME,BRAND,rank() over(PARTITION BY model_name,brand ORDER BY MODEL_ID) as car_rnk  from cars) car_calc
where car_calc.car_rnk>1;

delete from cars
where MODEL_ID in (select car_calc.MODEL_ID from 
(select MODEL_ID,MODEL_NAME,BRAND,rank() over(PARTITION BY model_name,brand ORDER BY MODEL_ID) as car_rnk  from cars) car_calc
where car_calc.car_rnk>1);

