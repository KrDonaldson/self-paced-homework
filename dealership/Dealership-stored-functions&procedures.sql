CREATE OR REPLACE FUNCTION create_invoice(_customer_id INTEGER, _salesperson_id INTEGER, _vehicle_id INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO invoice(customer_id, salesperson_id, vehicle_id)
	VALUES(_customer_id, _salesperson_id, _vehicle_id);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT create_invoice(1,1,1);
SELECT create_invoice(1,1,2);

CREATE OR REPLACE FUNCTION create_service_record(_vin VARCHAR(100))
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service_record(vin)
	VALUES(_vin);
END;
$MAIN$
LANGUAGE plpgsql;

DROP FUNCTION create_service_record;

SELECT create_service_record('KMHEC4A43FA791306');
SELECT create_service_record('1GT022CG7EF996299');

CREATE OR REPLACE FUNCTION create_service_ticket(_customer_id NUMERIC, _vehicle_id NUMERIC, _service_id NUMERIC)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT into service_ticket(customer_id, vehicle_id, service_id)
	VALUES(_customer_id, _vehicle_id, _service_id);
END;
$MAIN$
LANGUAGE plpgsql;

--add mechanic and service for ticket 1
select create_service_ticket(3, 6, 1);

--add mechanic and service for ticket 2
select create_service_ticket(4, 9, 4);

CREATE OR REPLACE FUNCTION add_service_mechanic(_mechanic_id NUMERIC, _service_ticket_id NUMERIC)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT into service_mechanic(mechanic_id, service_ticket_id)
	VALUES(_mechanic_id, _service_ticket_id);
END;
$MAIN$
LANGUAGE plpgsql;

select add_service_mechanic(1,1);
select add_service_mechanic(1,2);

CREATE OR REPLACE FUNCTION add_service_part(_part_id NUMERIC, _service_id NUMERIC)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT into service_part(part_id, service_id)
	VALUES(_part_id, _service_id);
END;
$MAIN$
LANGUAGE plpgsql;

DROP FUNCTION add_service_part;

-- add part for ticket 1
select add_service_part(6,1);
-- add part for ticket 2
select add_service_part(9,4);

select * from service_part;