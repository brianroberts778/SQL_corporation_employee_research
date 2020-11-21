create table departments (dept_no varchar not null primary key, 
						  dept_name varchar not null);
						  
select * from departments;

create table dept_emp (emp_no int not null, 
					   dept_no varchar not null, 
					   primary key (emp_no, dept_no));
					   
select * from dept_emp;

create table dept_manager (dept_no varchar not null, 
					   emp_no int not null, 
					   primary key (dept_no, emp_no));
					   
select * from dept_manager;

create table employees (emp_no int not null primary key, 
					   emp_title_id varchar not null, 
					   birth_date date not null,
					   first_name varchar not null,
					   last_name varchar not null, 
					   sex varchar not null,
					   hire_date date not null);
					   
select * from employees; 

create table salaries (emp_no int not null primary key,
					  salary int not null);

select * from salaries; 

create table titles (title_id varchar not null primary key,
					title varchar not null);
					
select * from titles; 

alter table "dept_Emp" add constraint "fk_dept_emp_emp_no" foreign key("emp_no")
references "employees" ("emp_no");

alter table "dept_emp" add constraint "fk_dept_emp_dept_no" foreign key("dept_no")
references "departments" ("dept_no");

alter table "dept_manager" add constraint "fk_dept_manager_dept_no" foreign key("dept_no")
references "departments" ("dept_no");

alter table dept_manager add constraint fk_dept_manager_emp_no foreign key(emp_no)
references employees (emp_no);

alter table employees add constraint fk_employees_emp_title_id foreign key(emp_title_id)
references "titles" ("title_id");

alter table salaries add constraint fk_salaries_emp_no foreign key(emp_no)
references employees (emp_no);

