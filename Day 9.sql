use sakila;
-- self join example (query)
drop database if exists regex123;

create database regex123;
use regex123;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);


INSERT INTO employees (employee_id, name, manager_id) VALUES
(1, 'Alice', NULL),       -- CEO
(2, 'Bob', 1),            -- VP of Sales
(3, 'Carol', 1),          -- VP of Engineering
(4, 'David', 2),          -- Sales Manager 1
(5, 'Eve', 2),            -- Sales Manager 2
(6, 'Frank', 3),          -- Engineering Manager 1
(7, 'Grace', 3),          -- Engineering Manager 2
(8, 'Heidi', 4),          -- Salesperson under David
(9, 'Ivan', 4),           -- Salesperson under David
(10, 'Judy', 5),          -- Salesperson under Eve
(11, 'Mallory', 6),       -- Engineer under Frank
(12, 'Niaj', 6),          -- Engineer under Frank
(13, 'Olivia', 7),        -- Engineer under Grace
(14, 'Peggy', 7),         -- Engineer under Grace
(15, 'Trent', 3);         -- Tech Lead under Carol (no direct reports)


select * from employees;
select emp.employee_id, emp.name,emp.manager_id,manager.employee_id,
manager.name  as mgrname from employees as emp
join employees as manager
where emp.manager_id=manager.employee_id;

-- create table newManager
-- as select employee_id as id,name from employes;

create database  regex1123;
use regex1123;
create table product(pid  int,  pname  varchar(20), price int);
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);


create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100),(995,'goa',102), (996,'J&K', 100), (997,'japan',102),
(998,'bhutan', 110);
select * from product;
select * from orders;
-- cross join  -- each row of first table combine with each row of another table  (cartesian join)--
select p.pid,p.price,o.productid,o.city from product as p
cross join orders as o;

-- natural join which works on common name of columns
select p.pid,p.price,o.productid,o.city from product as p
natural join orders as o;   -- if there will no any common column it will work as cross join

alter table orders rename  column productid to pid;  -- rename
select p.pid,p.price,o.pid,o.city from product as p  -- natural join
natural join orders as o;

use sakila;
select * from actor;
select * from film_actor;
 -- actor id,actorname,film id 
 select actor.actor_id,actor.first_name,film_actor.film_id from actor
 join film_actor where actor.actor_id= film_actor.film_id;
 
 -- film name 
 select a.actor_id,a.first_name,fa.actor_id,fa.film_id,flm.film_id as film ,flm.title from
 actor a 
 join film_actor as fa join film as flm
 where a.actor_id=fa.actor_id and fa.film_id=flm.film_id;
 
  select a.actor_id,a.first_name,fa.actor_id,fa.film_id,flm.film_id as film ,flm.title from
 actor a 
 join film_actor as fa join film as flm
 where a.actor_id=fa.actor_id and fa.film_id=flm.film_id
 order by first_name;