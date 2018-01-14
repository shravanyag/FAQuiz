drop database if exists tourist;
create database tourist;

\c tourist;

drop table if exists user_details;
create table user_details
	(email_id varchar(50) not null,
	 age integer,
	 Number_of_trips integer default 0,
	 name varchar(20) not null,
	 fellow_tourist integer default 0,
	 username varchar(20),
	 pwd varchar(20),
	 city varchar(20),
	 primary key (username)
	);

drop table if exists places;
create table places
	(place_id integer ,
	 city varchar(50) not null,
	 name varchar(100) not null,
	 picture varchar default 'No Image',
	 description varchar(500) default null,
	 genre varchar check( genre in ('Family Park/ Resort', 'Educative', 'Religious', 'Historical', 'Sports')),
	 entry_fee numeric default 0,
	 primary key(place_id)
	);
	
drop table if exists guide;
create table guide
	(guide_id integer,
	 number_of_teams integer default 0,
	 guide_name varchar(20) not null,
	 place_id integer,
	 price numeric,
	 phone_number varchar(20) not null,
	 primary key(guide_id, place_id),
	 foreign key (place_id) references places(place_id)
	);

drop table if exists cab;
create table cab
	(c_id integer ,
	 phone varchar(20) not null,
	 driver_name varchar(20) not null,
	 cab_type varchar(30) check (cab_type in('Mini Cab', 'Sedan', 'Hatch Back', 'Mini Bus')),
	 price numeric,
	 availability varchar check( availability in ('yes', 'no')),
	 from_city varchar(50),
	 to_city varchar(50),
	 departure timestamp,
	 arrival timestamp,
	 primary key (c_id, from_city, to_city)
	);

drop table if exists bus;
create table bus
	(bus_id integer ,
	 seats_available integer,
	 from_city varchar(50) not null,
	 to_city varchar(50) not null,
	 Type_of_bus varchar check( Type_of_bus in ('A/C', 'Non A/C', 'Non-Stop')),
	 departure_time timestamp,
	 arrive_time timestamp,
	 price numeric,
	 primary key(bus_id, from_city, to_city)
	);
	
drop table if exists hotel;
create table hotel
	(hotel_id integer ,
	 Number_of_stars integer default 0,
	 phone varchar(20) not null,
 	 name varchar(50) not null,
	 Number_of_rooms_available integer default 0,
	 Type_of_room varchar check( Type_of_room in ('King Size', 'Single', 'Royal', 'Non A/C King Size', 'Non A/C Single')),
	 city varchar(50) not null,
	 food_type varchar check( food_type in('Veg', 'Non-Veg', 'Both')),
	 lodging varchar check( lodging in('yes', 'no')),
	 primary key (hotel_id, Type_of_room)
	);

drop table if exists airlines;
create table airlines
	(airline_id integer ,
	 depart_time timestamp,
	 arrive_time timestamp,
	 price numeric,
	 type varchar check(type in('Business Class', 'Passenger', 'Regional')),
	 name_of_airline varchar(20),
	 from_airport varchar(50) not null,
    	 to_airport varchar(50) not null,
     	 number_of_seats integer,
       	 primary key(airline_id, from_airport, to_airport)
	);

drop table if exists train;
create table train
	(train_id integer ,
	 from_city varchar(50),
	 to_city varchar(50),
	 depart_time timestamp,
	 arrive_time timestamp,
	 price numeric,
  	 primary key(train_id, from_city, to_city)
	);

drop table if exists modes_of_payment;
create table modes_of_payment
	(Username varchar(20),
	 price integer check (price > 0),
	 payment_mode varchar(10) check(payment_mode in('Cash','Cheque','Online')),
	 servicing_company varchar(50),
	 primary key (username,servicing_company),
	 foreign key(username) references user_details(username)
	);

drop table if exists trips_taken;
create table trips_taken
	(username varchar(20),
	 from_city varchar(50),
	 to_city varchar(50),
	 hotel_id integer default 0,
	 Type_of_room varchar check( Type_of_room in ('King Size', 'Single', 'Royal', 'Non A/C King Size', 'Non A/C Single')),
	 date_of_travel timestamp,
	 guide_id integer default 0,
	 places_visited integer,
	 cab_id integer ,
	 bus_id integer ,
	 train_id integer ,
	 airline_id integer ,
	 price_for_day numeric default 0,
	 confirm_trip varchar check(confirm_trip in ('yes', 'no')),
	 primary key (username, date_of_travel, cab_id, bus_id, train_id, airline_id, places_visited),
	 foreign key (username) references user_details(username)
		on delete cascade,
	 foreign key (hotel_id, Type_of_room) references hotel(hotel_id, Type_of_room)
		on delete set default,
	 foreign key (guide_id, places_visited) references guide(guide_id, place_id)
		on delete set default,
	 foreign key (cab_id, from_city, to_city) references cab(c_id, from_city, to_city)
		on delete set default,
	 foreign key (bus_id, from_city, to_city) references bus(bus_id, from_city, to_city)
		on delete set default,
	 foreign key (train_id, from_city, to_city) references train(train_id, from_city, to_city)
		on delete set default,
	 foreign key (airline_id,from_city, to_city) references airlines(airline_id, from_airport, to_airport)
		on delete set default
	);