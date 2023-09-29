--Create a Query to display all customer orders where
--purchase amount is less than 100 or exclude those
--orders which order date is on or greater than 25 Aug
--2022 and customer id is above 2001. Sample table:
--customer_orders
select *
from "order" o
where (purchase_amount < 100)
	or (order_date < '2022-08-25')
	and (customer_id > 2001)
	