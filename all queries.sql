use order_inventory;

select * from customers;
select * from inventory;
select * from order_items;
select * from orders;
select * from products;
select * from shipments;
select * from stores;

desc customers;
desc inventory;
desc order_items;
desc orders;
desc products;
desc shipments;
desc stores;

select * from shipments;
desc shipments;

select * from orders;

select* from products;
desc products;

select * from inventory;
desc inventory;
desc stores;



select * from shipments where delivery_address ="pune";
select * from customers where email_address="roy.white@internalmail";

select * from customers where full_name="Gary Jenkins";

SELECT s.customer_id,COUNT(*) As shipmentCount
FROM Shipments s
GROUP BY s.customer_id
ORDER BY shipmentCount DESC
LIMIT 10;

SELECT customer_id
FROM shipments
GROUP BY customer_id
ORDER BY COUNT(*) DESC
LIMIT 10;

select c.customer_id, c.email_address,c.full_name,count(*) AS total_shipments
FROM shipments s
JOIN customers c ON s.customer_id=c.customer_id
GROUP BY s.customer_id,c.email_address,c.full_name
ORDER BY total_shipments DESC
LIMIT 10;

select * from shipments
where customer_id=45;

update shipments set shipment_status = "SHIPPED" where shipment_id=5;
select * from shipments where shipment_status = "CREATED";
select * from shipments;
desc shipments;

select * from shipments 
where store_id=5;

select * from orders
Where customer_id=45;

select * from orders
Where order_status="CANCELLED";

select count(*) AS TOTAL from shipments
where shipment_status="DELIVERED";

select * from customers
where full_name="vishal Dhire";

select * from shipments
where customer_id=100;

select * from customers
where email_address=5;

select distinct shipment_status
from shipments;

select count( distinct customer_id )from shipments
where shipment_status="CREATED";



 