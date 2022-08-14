INSERT INTO address_(
	street, 
	city, 
	state_, 
	zip, 
	country
	) 
VALUES
('1 Goodland Alley','Terre Haute','IN',47812,'United States'),
('3786 Waywood Point','Pensacola','FL',32505,'United States'),
('024 Rusk Point','Torrance','CA',90510,'United States'),
('674 Dahle Alley','Las Vegas','NV',89155,'United States'),
('832 Lake View Avenue','Mobile','AL',36641,'United States'),
('7 American Plaza','Springfield','MA',01105,'United States');

INSERT INTO contact(
	phone, 
	cell, 
	email) 
VALUES
('812-649-8050','917-325-2210','ejapp0@ibm.com'),
('850-178-7303','304-155-7700','rkelshaw1@123-reg.co.uk'),
('818-631-8454','479-222-4191','dlargen2@europa.eu'),
('702-242-7196','402-406-6187','sparffrey3@youku.com'),
('251-941-5749','304-188-0812','rjaquet4@sciencedirect.com'),
('413-383-5325','716-150-8927','jhembry5@dmoz.org');

INSERT INTO employee_role(
	employee_role) 
VALUES
('Theater Team Member'),
('Crew Leader'),
('Manager');

INSERT INTO employee(
	first_name, 
	last_name, 
	address_id, 
	contact_id, 
	employee_role_id) 
VALUES
('Elizabet','Japp',1,1,1),
('Rudolfo','Kelshaw',2,2,2),
('Dody','Largen',3,3,3);

INSERT INTO customer(
	first_name, 
	last_name, 
	address_id, 
	contact_id, 
	account_id) 
VALUES
('Seumas','Parffrey',4,4,1),
('Rafaela','Jaquet',5,5,2),
('Dody','Largen',6,6,3);

INSERT INTO concession(concession_name, concession_cost) VALUES
('Small Popcorn', 1.00),
('Medium Popcorn', 1.50),
('6 oz Drink', 4.00),
('8 oz Drink', 5.00);

INSERT INTO cart_concession(concession_id, number_purchased) VALUES
(3, 2),
(1,1),
(4,1);

INSERT INTO cart(customer_id, employee_id, cart_concession_id) VALUES
(1,1,1),
(2, 1, 2),
(3,2,3);

INSERT INTO category(category_name) VALUES
('Action'),
('Adventure'),
('Animation'),
('Comedy'),
('Crime'),
('Documentary'),
('Drama'),
('Fantasy'),
('Horror'),
('Romance'),
('Sci-Fi'),
('Thriller');

INSERT INTO rating(rating) VALUES
('G'),
('PG'),
('PG-13'),
('PG-17'),
('R');

INSERT INTO movie(title, descrip, rating_id, language_id, movie_length, 
movie_cost) VALUES
('The Witches', 'In late 1967, a young orphaned boy goes to live with his loving grandma in the rural Alabama town of Demopolis. As the boy and his grandmother encounter some deceptively glamorous but thoroughly diabolical witches, she wisely whisks him away to a seaside resort. Regrettably, they arrive at precisely the same time that the worlds Grand High Witch has gathered her fellow cronies from around the globe -- under cover -- to carry out her nefarious plans.',
2, 'en', 106, 5.50),
('Blue is the Warmest Colour', 'A French teen (Adèle Exarchopoulos) forms a deep emotional and sexual connection with an older art student (Léa Seydoux) she met in a lesbian bar.',
4, 'fr', 175, 7.75),
('Hellbent', 'A group of gay friends is celebrating Halloween in West Hollywood, Calif., a neighborhood that is being prowled by a killer wearing a devil mask. One of them, Eddie (Dylan Fergus), who works for the police, brings the others through some woods to check out a recent murder scene. They ignore the mask-wearing killer, who follows the group to a club, where he starts decapitating them one at a time -- until the only ones left are Eddie and Jake (Bryan Kirkwood), a potential love interest.',
5, 'en', 84, 5.50),
('FernGully: The Last Rainforest', 'Crysta (Samantha Mathis) is a fairy who lives in FernGully, a rainforest in Australia, and has never seen a human before. In fact, she is told they are extinct. But when a logging company comes near the rainforest, she sees that they do exist, and even accidentally shrinks one of them: a boy named Zak (Jonathan Ward). Now her size, Zak sees the damage that the company does and helps Crysta to stop not only them, but an evil entity named Hexxus (Tim Curry), who feeds off pollution.',
1, 'en', 76, 5.50);

INSERT INTO movie_category(movie_id,category_id) VALUES
(1,4),
(1,8),
(2,7),
(2,10),
(3,9),
(4,3),
(4,2),
(4,8);

INSERT INTO ticket(movie_id) VALUES
(4),
(4),
(4),
(4),
(2),
(2),
(1),
(1),
(1);

INSERT INTO payment(cart_id, employee_id, customer_id, total_cost) VALUES
(1,1,1, 8.00),
(2,1,2, 1.00),
(3,2,3, 5.00);

select *
from order_  

INSERT INTO order_(ticket_id, customer_id, employee_id) VALUES
(1,2,1),
(2,2,1),
(3,3,3);