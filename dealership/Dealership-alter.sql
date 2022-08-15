ALTER TABLE service_part 
ADD quantity numeric(4,0);

DELETE FROM invoice WHERE invoice_id > 2;

select * from invoice;

DELETE FROM service_part;