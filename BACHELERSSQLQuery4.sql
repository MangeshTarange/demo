--create table table-name (col1,col2,col3)
create table Bachelers (rollNo int, name varchar(20), dept varchar(20), marks int, city varchar(20))
 select * from Bachelers
--select
insert into Bachelers values( 19 , 'mangesh','mech',45,'solapur')
insert into Bachelers values(20,'nagesh','civil',50,'baramati')
insert into Bachelers values(21,'shekhar', 'entc',60,'kolhapur')
insert into Bachelers values(22,'nihal','mech',55,'solapur')
insert into Bachelers values(23,'khunal','mech',70,'pune')
insert into Bachelers values(24,'ishwar','civil',40,'pune')
insert into Bachelers values(25,'aditya','it',65,'mumbai')
insert into Bachelers values(26,'akansh','cse',50,'parbhani')

select * from Bachelers

TRUNCATE TABLE Bachelers

select * from Bachelers where marks = 50
select * from Bachelers where marks <> 50
select * from Bachelers where marks < 50
select * from Bachelers where marks <= 50
select * from Bachelers where marks > 50
select * from Bachelers where marks >=50

select * from Bachelers where dept in ('entc','mech')
select * from bachelers where city in ('solapur','pune','nashik')
select * from bachelers where dept not in ('entc','mech')
select * from bachelers where city not in ('parbhani')

select * from bachelers where dept ='entc' and marks=60
select * from bachelers where dept in ('civil') and marks >=50
select * from bachelers where dept = 'civil' and marks >=50
select * from bachelers where dept in ('civil') and city >='c'
select * from bachelers where dept = 'civil' or marks > 60
 
 --quetion, there city should not be pune and there marks should be 80,90
 -- answer
 select * from bachelers where city not in ('pune') and marks in (80,90)
 select * from bachelers where city <> 'pune' and marks in (45,60)


 --question, there dept should be entc and mech and marks should be less than 60

  select * from bachelers where dept in ('mech','entc') and marks <60

  select * from bachelers where marks between 50 and 70
    select * from bachelers where marks  not between 50 and 70
	  select * from bachelers where city between 'a' and 'm'

 SELECT * , NEW_MARK = Marks + 10 from Bachelers 