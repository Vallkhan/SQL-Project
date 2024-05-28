drop table titles cascade;
drop table salaries cascade;
drop table departments cascade;
drop table employees cascade;
drop table dept_emp cascade;
drop table dept_manager cascade;

create table departments(
dept_no varchar(4) primary key not null,
dept_name varchar(50) not null);

create table titles(
title_id varchar(10) primary key,
title varchar(50));
		
create table employees(
emp_no int primary key not null,
emp_title_id varchar(10),
foreign key (emp_title_id) references titles(title_id),
birth_date varchar(30),
first_name varchar(50),
last_name varchar(50),
sex varchar(2),
hire_date varchar(30));


create table salaries(
emp_no int  primary key not null,
salary int,
foreign key (emp_no) references employees(emp_no));

create table dept_emp(
emp_no int not null,
dept_no varchar(4) not null,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no));
					 			  
create table dept_manager(
dept_no varchar(4) not null,
foreign key (dept_no)  references departments(dept_no),
emp_no int not null,
foreign key (emp_no) references employees(emp_no));