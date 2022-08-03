show databases;
use admin;
create table countries(country_id int,country_name varchar(30),region_id varchar(30),primary key (country_id));
select*from countries;
create table jobs(job_id int,title varchar(30),Minsalary varchar(10)default '8000',Maxsalary varchar(10),primary key(job_id));
create table employee1(emp_id int,First_name varchar(30),Last_name varchar(30),email varchar(50),phone_number varchar(10),hire_date date,salary varchar(10),commission varchar(10),manager_id int);
show tables;
insert into countries values(101,"India","asia");
insert into countries values(102,"srilanka","asia");
insert into countries values(103,"pakisthan","asia");
select*from countries;
insert into jobs values(103,"Maneger",8000.00,15000.00);
insert into jobs values(104,"daywages",6000.00,12000.00);
insert into jobs values(105,"salesman",4500.00,10000.00);
select *from jobs;
insert into employee1 values(011,"siva","kumar","sivaguru@gmail.com","9487880080","2019-03-21","20000","1000.00",121);
insert into employee1 values(012,"sakthi","vel","sakthi2002@gmail.com","9361851912","2018-05-18","18000","1500",122);
insert into employee1 values(013,"muthu","pandi","mutupandi2001@gmail.com","9442311221","2020-04-12","10000","1200",123);
select * from employee1;
rename table countries to countries_new;
select * from countries_new;
select country_id as country_ID ,country_name as country_Name from countries_new;


