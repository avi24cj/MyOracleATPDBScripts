--- Q5 : IPL Matches --- 

drop table teams;
create table teams
    (
        team_code       varchar(10),
        team_name       varchar(40)
    );

insert into teams values ('RCB', 'Royal Challengers Bangalore');
insert into teams values ('MI', 'Mumbai Indians');
insert into teams values ('CSK', 'Chennai Super Kings');
insert into teams values ('DC', 'Delhi Capitals');
insert into teams values ('RR', 'Rajasthan Royals');
insert into teams values ('SRH', 'Sunrisers Hyderbad');
insert into teams values ('PBKS', 'Punjab Kings');
insert into teams values ('KKR', 'Kolkata Knight Riders');
insert into teams values ('GT', 'Gujarat Titans');
insert into teams values ('LSG', 'Lucknow Super Giants');
commit;

select * from teams;

select t.*,row_number()over(order by TEAM_CODE) ID  from teams t;
---Exact one Match with other team
with team as (select t.*,row_number()over(order by TEAM_CODE) ID  from teams t)
select team1.TEAM_CODE as HomeTeamCode, team1.TEAM_NAME as HomeTeamName, team1.ID as HomeTeamID
,opponentTeam.TEAM_CODE as OpponantTeamCode, opponentTeam.TEAM_NAME as OpponantTeamName, opponentTeam.ID as OpponantTeamID from team team1 
inner join team opponentTeam on team1.id < opponentTeam.id;
-- Exact 2 math with other
with team as (select t.*,row_number()over(order by TEAM_CODE) ID  from teams t)
select team1.TEAM_CODE as HomeTeamCode, team1.TEAM_NAME as HomeTeamName, team1.ID as HomeTeamID
,opponentTeam.TEAM_CODE as OpponantTeamCode, opponentTeam.TEAM_NAME as OpponantTeamName, opponentTeam.ID as OpponantTeamID from team team1 
inner join team opponentTeam on team1.id <> opponentTeam.id;
