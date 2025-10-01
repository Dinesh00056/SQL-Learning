use sakila;
select* from payment;
-- sub grouping
select customer_id,amount, count(amount) from payment group by customer_id,amount;
 -- how much amount we have spent on each year
 select amount,year(payment_date) from payment group by amount,year(payment_date);
 select year(payment_date), staff_id,sum(amount)from payment group by year(payment_date),staff_id;
 -- select year(payment_date), month(payment_date)staff_id,sum(amount)from payment group by year(payment_date),staff_id,month(payment_date);
  -- order by (sort)
  select* from payment order by rental_id; -- for ascending order
  select * from payment order by customer_id desc;
  select * from payment order by customer_id desc,amount desc; -- for two columns
  select * from payment order by rental_id,amount;
-- conditional functions
select customer_id,amount,if(amount>3,'High','Low') from payment; -- if statement
select customer_id,amount,if(amount=2.99,'High',if(amount=5.99,'Avg','Low')) from payment; -- nested 
select customer_id,amount,
	case
     when amount=2.99 then 'high'
	 when amount=5.99 then 'avfg'
     else 'low'
     end 
     from payment;
     
     -- select two columns customer_id,status if the customer_id>1 print hello if customer id greaeter than 4 print user else regex 
select customer_id, amount,
	case
     when customer_id>4 then 'user'
     when customer_id>1 then 'hello'
     else 'regex'
     end as status
from payment;