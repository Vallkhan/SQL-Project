

--List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, last_name, first_name, sex, salary 
from employees e
left join salaries s on e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date  from employees e where right(hire_date,4)='1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm1.dept_no, dept_name , dm1.emp_no ,e.last_name , e.first_name  
from dept_manager dm1
inner join employees e on dm1.emp_no =e.emp_no
inner join departments d on dm1.dept_no  = d.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select de.dept_no , e.emp_no , last_name, first_name, d.dept_name  from employees e
left join dept_emp de on e.emp_no = de.emp_no 
left join departments d  on de.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name ,last_name , sex  
from employees e
where first_name ='Hercules' and left(last_name,1)='B';

--List each employee in the Sales department, including their employee number, last name, and first name.
select d.dept_name ,e.emp_no , e.last_name , e.first_name from employees e
inner join dept_emp de on e.emp_no=de.emp_no
inner join departments d on de.dept_no=d.dept_no
where dept_name='Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no , e.last_name , e.first_name , d.dept_name from employees e
inner join dept_emp de on e.emp_no=de.emp_no
inner join departments d on de.dept_no=d.dept_no
where dept_name='Sales' or dept_name='Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as count from employees e group by last_name order by count desc;




