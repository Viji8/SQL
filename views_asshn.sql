use companydb;
CREATE TABLE employees02(
  emp_id int primary key,
  emp_name varchar(50),
  salary int,
  department varchar(30)
);
insert into employees02 values
(1, 'John', 40000, 'HR'),
(2, 'Sara', 50000, 'IT'),
(3, 'Ravi', 45000, 'Sales');

create view emp_view as
select emp_id, emp_name, salary
from employees02;

select * from emp_view;

create view salary_view as
SELECT emp_id, salary
FROM employees02;

update salary_view
set salary = 55000
where emp_id = 2;

select * from employees02;
create view avg_salary as
select department, avg(salary)
from employees02
group by department;
