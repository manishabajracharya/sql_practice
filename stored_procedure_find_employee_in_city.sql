
/*create a stored procedure which takes city as input and provides total number of employee in that city
*/

--------------create db and table---------------
create database interview_practice;
use interview_practice;
create table employee (
id int(11) NOT NULL AUTO_INCREMENT,
first_name varchar(45) DEFAULT NULL,
city varchar(45) DEFAULT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-----------------------Insert data-------------------------
use interview_practice;
insert into employee values
(1,'Daniel','Fremont'),
(2,'Dasha','Fremont'),
(3,'Sweta','Union City');

-----------------stored procedure-------------------------

CREATE PROCEDURE new_procedure (city_name varchar(20))
BEGIN

select count(*)
from employee
where employee.city=new_procedure.city_name;

END

-------------run stored procedure-------------------------
set @city_name = 'Fremont';
call interview_practice.new_procedure(@city_name);
select @city_name;
