drop table if exists address_ cascade;
create table address_(
    address_id SERIAL primary key,
    street varchar(50) null,
    city varchar(50) null,
    state_ varchar(2) null,
    zip varchar(10) null,
    country	varchar(50)	null 
);

drop table if exists contact cascade;
create table contact(
    contact_id SERIAL primary key,
    phone varchar(20) null,
    cell varchar(20) null,
    email varchar(100) null,
    facebook varchar(50) null,
    twitter varchar(50) null,
    google varchar(100) null
);

drop table if exists employee_role cascade;
create table employee_role(
    employee_role_ID SERIAL primary key,
    employee_role varchar(50)	
);

drop table if exists employee cascade;
create table employee(
    employee_id SERIAL primary key,
    first_name varchar(50),
    last_name varchar(50),
    address_id integer not null,
    contact_id integer not null,
    employee_role_id integer not null,
    foreign key (address_id) references address_(address_id) on delete cascade,
    foreign key (contact_id) references contact(contact_id) on delete cascade,
    foreign key (employee_role_id) references employee_role(employee_role_id) on delete cascade
);

drop table if exists customer cascade;
create table customer(
    customer_id SERIAL primary key,
    first_name varchar(50),
    last_name varchar(50),
    account_id integer,
    address_id integer not null,
    contact_id integer not null,
    foreign key (address_id) references address_(address_id) on delete cascade,
    foreign key (contact_id) references contact(contact_id) on delete cascade
);


drop table if exists concession cascade;
create table concession(
    concession_id SERIAL primary key,
    concession_name varchar(50),
    concession_cost numeric(4,2)		
);

drop table if exists cart_concession cascade;
create table cart_concession(
    cart_concession_id SERIAL primary key,		
    concession_id integer not null,	
    number_purchased numeric(18,0),		
    foreign key (concession_id) references concession(concession_id) on delete cascade
);

drop table if exists cart cascade;
create table cart(
    cart_id SERIAL primary key,
    customer_id integer not null,
    employee_id integer not null,
    cart_concession_id integer not null,
    cart_date timestamp with time zone default timezone('utc', now()),
    foreign key (customer_id) references customer(customer_id) on delete cascade,
    foreign key (employee_id) references employee(employee_id) on delete cascade,
    foreign key (cart_concession_id) references cart_concession(cart_concession_id) on delete cascade
);

drop table if exists rating cascade;
create table rating	(
    rating_id SERIAL primary key,
    rating varchar(50)
);

drop table if exists category cascade;
create table category(
    category_id SERIAL primary key,
    category_name varchar(50)
);

drop table if exists movie cascade;
create table movie(
    movie_id SERIAL primary key,
    title varchar(50),
    descrip text,
    rating_id integer not null,
    language_id varchar(5),
    movie_length varchar(50),
    movie_cost varchar(50),
    foreign key (rating_id)references rating(rating_id) on delete cascade
);

drop table if exists movie_category cascade;
create table movie_category(
    movie_category_id SERIAL primary key,
    category_id integer not null,
	movie_id integer not null,
	foreign key (category_id) references category(category_id) on delete cascade,
    foreign key (movie_id) references movie(movie_id) on delete cascade
);

drop table if exists ticket cascade;		
create table ticket(
    ticket_id SERIAL  primary key,
    movie_id integer not null,
    foreign key (movie_id) references movie(movie_id) on delete cascade
);

DROP TABLE IF EXISTS  order_ CASCADE;
CREATE TABLE  order_(
    order_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    order_date timestamp with time zone  DEFAULT timezone('utc', now()),
    FOREIGN KEY	(ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY	(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY	(employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS  payment CASCADE;
CREATE TABLE  payment(
    payment_id SERIAL PRIMARY KEY,
    cart_id INTEGER NULL,
    order_id INTEGER NULL,
    employee_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    total_cost numeric(18,2),
    payment_time timestamp with time zone  DEFAULT timezone('utc', now()),
    FOREIGN KEY	(payment_id) REFERENCES payment(payment_id) ON DELETE CASCADE,
    FOREIGN KEY	(cart_id) REFERENCES cart(cart_id) ON DELETE CASCADE,
    FOREIGN KEY	(employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE,
    FOREIGN KEY	(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);