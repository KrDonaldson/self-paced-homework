insert into part(part_name) values 
('Battery'),
('Engine'),
('Rear Suspension'),
('Rear Axle'),
('Muffler'),
('Alternator'),
('Radiator'),
('Catalytic Converter'),
('Transmission'),
('Breaks');

select * from part;

INSERT INTO customer(first_name, last_name) VALUES
('Maurits', 'Greschke'),
('Farica', 'Gurko'),
('Ardenia', 'McGlynn'),
('Carine', 'Gricks'),
('Willi', 'Bouldon'),
('Quentin', 'Boulsher'),
('Lorinda', 'Sangra'),
('Terence', 'Percy');

INSERT INTO salesperson(first_name, last_name) VALUES
('Xylina', 'Daoust'),
('Angil', 'Smallpeice'),
('Maggi', 'Handley'),
('Mozes', 'Aylesbury'),
('Sileas', 'Brighouse'),
('Hamlen', 'Davidsen'),
('Gail', 'Bentick'),
('Skippy', 'Bottoner');

INSERT INTO mechanic(first_name, last_name) VALUES
('Sapphira', 'Fawdry'),
('Pearline', 'Vidler'),
('Ilario', 'Trevor'),
('Felike', 'Cudihy'),
('Lisetta', 'Okenden'),
('Sabine', 'McKelvey'),
('Peyton', 'Subhan'),
('Noll', 'Bingell');

INSERT INTO vehicle(vin, year_, make, model) VALUES
('1G6DF5E50C0256339', 2007, 'Cadillac', 'Escalade EXT'),
('YV126MFC8F1015455', 2001, 'Chevrolet','S10'),
('2LNBL8CV6AX759417', 1995, 'Pontiac','Tempest'),
('5FNYF3H27AB138887', 1961, 'Toyota','Celica'),
('1G6DC8E3XE0193522', 1996, 'Jeep','Grand Cherokee'),
('KMHEC4A43FA791306', 1999, 'Infiniti','QX'),
('4T3BA3BB9AU647631', 2007, 'Cadillac','Escalade'),
('1N6AF0KY7FN101423', 1998, 'Chevrolet','Tahoe'),
('1GT022CG7EF996299', 2001, 'Volkswagen','rio'),
('4T1BF1FK7CU013701', 2011, 'Mitsubishi','Outlander Sport'),
('3C6JR6CT3DG281044', 2006, 'Chevrolet','Silverado 1500'),
('1N4AB7AP1DN803756', 2012, 'Nissan','Rogue'),
('1FAHP3FN5AW622360', 2012, 'Buick','Verano'),
('1VWAH7A33EC863215', 2012, 'MINI','Countryman'),
('SCFEBBBK0EG356202', 1998, 'GMC','2500 Club Coupe'),
('1C4AJWAG1DL948850', 2007, 'Chrysler','Aspen'),
('WAUHF98PX7A429509', 1985, 'Maserati','Biturbo'),
('5NPEB4AC3EH345291', 2011, 'Dodge','Charger'),
('WDDNG7DB1CA845739', 2003, 'Land Rover','Range Rover'),
('WBY2Z2C59EV000279', 2002, 'Mercedes-Benz','M-Class');

INSERT INTO service(service_name) values
('Alternator Replacement'),
('Break Service'),
('Break Replacement'),
('Transmission Replacement');

select * from SERVICE_PART;

select * from service;

select * from part;





