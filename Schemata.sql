Create Table titles (
  title_id varchar PRIMARY KEY,
  title varchar
);

Create Table employees (
  emp_no SERIAL PRIMARY KEY,
  first_name varchar,
  last_name varchar,
  emp_title varchar,
  birth_date date,
  hire_date date,
  sex varchar,
  FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

Create Table departments (
  dept_no varchar PRIMARY KEY,
  dept_name varchar
  );

Create Table dept_emp (
  emp_no int,
  dept_no varchar,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

Create Table dept_manager (
  emp_no int PRIMARY KEY,
  dept_no varchar,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



Create Table salaries (
  emp_no int,
  salary int,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);