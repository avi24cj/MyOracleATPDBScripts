drop table src_dest_distance;
create table src_dest_distance
(
    source          varchar(20),
    destination     varchar(20),
    distance        int
);
insert into src_dest_distance values ('Bangalore', 'Hyderbad', 400);
insert into src_dest_distance values ('Hyderbad', 'Bangalore', 400);
insert into src_dest_distance values ('Mumbai', 'Delhi', 650);
insert into src_dest_distance values ('Delhi', 'Mumbai', 650);
insert into src_dest_distance values ('Chennai', 'Pune', 880);
insert into src_dest_distance values ('Pune', 'Chennai', 880);

commit;

select * from src_dest_distance;


SELECT 
    dist.*,
    ROW_NUMBER() OVER (ORDER BY  distance) AS rn
FROM src_dest_distance dist;

SELECT 
    dist.*,
    ROW_NUMBER() OVER (ORDER BY  distance,DESTINATION) AS rn
FROM src_dest_distance dist;

with tempDist as (
SELECT 
    dist.*,
    ROW_NUMBER() OVER (ORDER BY  distance) AS rn
FROM src_dest_distance dist
) 
select t1.SOURCE, t1.DESTINATION, t1.DISTANCE from tempDist t1
inner join tempDist t2 on (t1.DISTANCE = t2.DISTANCE and t1.rn>t2.rn);