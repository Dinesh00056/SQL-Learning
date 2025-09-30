use sakila;
select* from payment;
select count(*),count(customer_id) from payment;

-- sum, max,max,min

select payment_id from payment where customer_id=3;
select count(customer_id) from payment where customer_id=3;
select customer_id from payment group by customer_id;
select customer_id, sum(amount),count(customer_id),max(customer_id)from payment group by customer_id;
select payment_id,count(*) from payment group by payment_id;
select customer_id,count(customer_id) from payment where customer_id>3 group by customer_id;
select customer_id,count(customer_id) from payment where count(customer_id)>30 group by customer_id; -- this is not worked because we use aggreagte function on group by
-- where clause and condition does not works on aggregate function because where clausee works for data filter in case if we want to filter data on aggregate
-- bases we use having clause and we want to filter normally data than we can use group by 
select customer_id,count(customer_id) from payment  group by customer_id having count(customer_id)>30; select amount,count(*),sum(amount)from payment group by amount;
select amount from payment where amount>2 group by amount;-- where will use before group by
select amount,count(*),sum(amount) from payment where amount>2 group by amount
having count(*)>3000;

-- alias is used to change the
select amount,count(*) as totalcount,sum(amount) from payment where amount>2 group by amount
having totalcount>3000; -- as is used for changing the name

select* from payment;
-- Q1) get the staff id and total no customer serve  by each staff
select staff_id, count(customer_id)from payment group by staff_id;
-- Q2) get the total amount and no of payment does for each month 
select month(payment_date),sum(amount),count(amount) from payment group by month(payment_date);
-- Q3)get the amount and total no of unique customer who have done the payment for each amount
select amount, count(distinct(customer_id)) from payment  group by amount;
-- Q4)get the no of transactions achieved for each amount for the year 2005 where the transction should be greater than 15
select amount,count(payment_id) from payment where year(payment_date)=2005 group by amount having count(payment_id)>15;
