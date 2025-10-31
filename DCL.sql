-- DCL  permission to access the object 
-- grant, revoke

create user 'ram' identified by 'Ram@1234';
select* from mysql.user;
show grants for 'ram'; -- will show privileges
-- grant statement

-- grant all privileges on din12.* to 'ram';
grant select  on sakila.* to 'ram';  -- granting permission to sakila
revoke all privileges on sakila.* from 'ram'; -- for denying permission to sakila
revoke select on sakila.* from 'ram';

revoke all privileges on din12.* from 'ram';

-- roles
create role abc12;
grant'abc12'to 'ram';
