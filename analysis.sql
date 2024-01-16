select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees left join salaries on employees.emp_no = salaries.emp_no;

select first_name, last_name, hire_date from employees where hire_date like '%1986%';

SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.first_name, employees.last_name from dept_manager left join departments on dept_manager.dept_no = departments.dept_no left join employees ON employees.emp_no = dept_manager.emp_no;

select departments.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name from dept_emp left join employees ON dept_emp.emp_no = employees.emp_no inner join departments ON departments.dept_no = dept_emp.dept_no;

select first_name, last_name, sex from employees where first_name = 'Hercules' and last_name like 'B%';

select employees.emp_no, employees.last_name, employees.first_name from dept_emp left join departments ON departments.dept_no = dept_emp.dept_no left join employees ON employees.emp_no = dept_emp.emp_no where departments.dept_name = 'Sales';

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from dept_emp left join departments ON departments.dept_no = dept_emp.dept_no left join employees ON employees.emp_no = dept_emp.emp_no where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

select last_name, count(last_name) as last_name_frequency from employees group by last_name ORDER by last_name_frequency DESC;