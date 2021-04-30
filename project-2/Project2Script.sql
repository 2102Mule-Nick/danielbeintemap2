drop table flights;
drop table planes;

create table planes(
plane_id serial primary key,
plane_type varchar(100),
totalSeats int);

create table flights(
id serial primary key,
code varchar(100),
price numeric,
departureDate varchar(100),
origin varchar(100),
destination varchar(100),
emptySeats int,
plane_id int references planes(plane_id));

insert into planes(plane_type, totalseats) 
	values('Boeing 747', 150), 
		('Boeing 150', 1000), 
		('Guy Fieris Private Plane', 1), 
		('Giant Big Boy', 400),
		('Superman', 100),
		('Really Big One', 1200);

insert into flights(code, price, departuredate, origin, destination, emptyseats, plane_id)
	values
		('ejlaj', 12.00, '04/17/2020', 'MUA', 'CLE', 0, 1),
		('aje837', 100.00, '05/18/2023', 'MUA', 'PDX', 1, 2),
		('jeije', 3.25, '12/24/2020', 'MUA', 'SFO', 0, 3),
		('jdk888', 74.70, '01/09/2021', 'MUA', 'LAX', 13, 4),
		('dkji73', 13.13, '07/12/2021', 'MUA', 'PDX', 14, 5),
		('dkeik7', 14.50, '12/30/2021', 'MUA', 'CLE', 12, 6),
		('lol420', 666.69, '03/03/2021', 'MUA', 'LAX', 0, 3),
		('newnew', 44.45, '01/02/2003', 'MUA', 'PDX', 1, 3),
		('funnycode', 33.33, '03/08/1200', 'MUA', 'SFO', 2, 4),
		('joke99', 4500.00, '12/12/2012', 'MUA', 'LAX', 3, 6),
		('49iguess', 2.25, '01/08/2013', 'MUA', 'SFO', 400, 4),
		('12345', 123.45, '12/03/4567', 'MUA', 'CLE', 12, 2);
		
create view fullview as select * from flights f1 inner join planes p2 using (plane_id)