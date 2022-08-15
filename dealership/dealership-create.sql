drop table if exists part cascade;
create table part(
	part_id SERIAL PRIMARY KEY,
    part_name varchar(50)
);

drop table if exists service cascade;
create table service(
	service_id SERIAL PRIMARY KEY,
    service_name varchar(50)
);

drop table if exists service_part cascade;
create table service_part(
	service_part_id SERIAL PRIMARY KEY,
    service_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL,
    FOREIGN KEY	(service_id) REFERENCES service(service_id),
    FOREIGN KEY	(part_id) REFERENCES part(part_id)
);

drop table if exists mechanic cascade;
create table mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

drop table if exists customer cascade;
create table customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

drop table if exists salesperson cascade;
create table salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

drop table if exists service_record cascade;
create table service_record (
	service_record_id SERIAL primary key, 
	vin VARCHAR(50) not null
);


drop table if exists vehicle cascade;
create table vehicle (
	vehicle_id SERIAL PRIMARY KEY,
	vin VARCHAR(50) NOT NULL,
	year_ NUMERIC(4,0),
	make VARCHAR(50),
	model VARCHAR(50)
);

drop table if exists service_ticket cascade;
create table service_ticket (
	service_ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	vehicle_id INTEGER NOT NULL,
	service_id INTEGER NOT NULL,
	FOREIGN KEY	(customer_id) REFERENCES customer(customer_id) ON DELETE cascade,
	FOREIGN KEY	(vehicle_id) REFERENCES vehicle(vehicle_id) ON DELETE cascade,
	FOREIGN KEY	(service_id) REFERENCES service(service_id) ON DELETE cascade
);

drop table if exists service_mechanic cascade;
create table service_mechanic (
	service_mechanic_id SERIAL PRIMARY KEY,
	mechanic_id INTEGER NOT NULL,
	service_ticket_id INTEGER NOT NULL,
	FOREIGN KEY	(mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE,
	FOREIGN KEY	(service_ticket_id) REFERENCES service_ticket(service_ticket_id) ON DELETE cascade
);

drop table if exists invoice cascade;
create table invoice (
	invoice_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	salesperson_id INTEGER NOT NULL,
	vehicle_id INTEGER NOT NULL,
	FOREIGN KEY	(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
	FOREIGN KEY	(salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE,
	FOREIGN KEY	(vehicle_id) REFERENCES vehicle(vehicle_id) ON DELETE cascade
);

