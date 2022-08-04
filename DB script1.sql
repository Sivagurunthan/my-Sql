use admin;
create table locations(loc_id int,street_address varchar(50),city varchar(20),State_province varchar(50));
create table country(Country_id int,country_name varchar(50),region_id int);
insert into  locations values(1000,"124 via cola di rie","Roma","GST");
insert into  locations values(1100,"930 calle dell te","venice","Taxes");
insert into  locations values(1200,"2017 shinjuku-ku","Tokyo","Tokoyo perfectu");
insert into  locations values(1300,"2011 Interiors","south san","california");
insert into  locations values(1400,"147 spadina ava","London","Ontario");
select * from locations;
insert into country values(2,"Argentina",20);
insert into country values(3,"Australia",30);
insert into country values(4,"Rio",40);
insert into country values(5,"Berline",50);
select  * from country;
select loc.street_address,city,state_province,count.country_name from locations as loc natural join country as count;
select loc.loc_id,street_address,city,state_province,count.country_name from locations as loc natural join country as count;
select * from employee1;
show tables;
create table departmend(dept_id int,dept_name varchar(50));
insert into departmend values(01,"Adminstration");
insert into departmend values(02,"Marketing");
insert into departmend values(03,"purchasing");
select * from departmend;
select First_name,Last_name,dept_id,dept_name from employee1 join departmend ;
select * from jobs;
select e.Frst_name, e.Last_name, e.job_id, e.dept_id, d.dept_name from employee1 e join departmend d on (e.department_id = d.department_id) join locations l on (d.location_id = l.location_id) where lower(l.city) = 'London';
select First_name,Last_name,salary from employee1 where salary > (select salary from employee1 where Last_name='Bull');
select First_name,Last_name from employee1 where manager_id in(select emp_id from employee1 where dept_id in(select dept_id from departmend where loc_id in (select loc_id from locations where Country_id=2)));
select First_name, Last_name from employee1 
where manager_id in (select emp_id 
from employee1 where department_id 
in (SELECT dept_id FROM departmend WHERE loc_id 
in (select loc_id from locations where country_id='2')));
select First_name , Last_name from employee1 where (emp_id in(select manager_id from employee1));

