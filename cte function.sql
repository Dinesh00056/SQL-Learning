use window_test;
select * from employee_Sales;
select max(sale_amount) from employee_sales    --  second highest salary
where sale_amount<(select max(sale_amount) from employee_sales);

select* from (select*, dense_rank() over(order by sale_amount desc) as totalRank from employee_sales)as abc
 where totalRank=6;
 
 
 -- CTE ---> Common Table Expression (name on temporary basis)  temporary result of query, cte can be treated as table and it can be reuse again and again
 with abc as(
 select*, dense_rank() over(order by sale_amount desc) as totalRank from employee_sales)
 select * from abc;
 
 use sakila;
 select* from actor;
 select * from film_actor;
 
 with film_cte as 
 (select * from film_actor where actor_id=1
 ) 
 select actor.actor_id, film_id from actor join film_cte on actor.actor_id=film_cte.actor_id;
 

