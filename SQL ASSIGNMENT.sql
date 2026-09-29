DROP TABLE IF EXISTS EMPLOYEES;


-- Create the employees table
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
	);

	SELECT * FROM employee;

	
-- Insert data into employees table
	INSERT INTO employee (first_name, last_name, department, salary, joining_date, age)
	VALUES
			('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
			('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
			('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
			('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
			('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


-- Assignment Questions
--Q1: Retrieve all employees’ first_name and their departments.

	SELECT FIRST_NAME, DEPARTMENT FROM employee;


--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

	UPDATE employee
	SET salary=Salary+(salary*0.10)
	WHERE department= 'IT';

	SELECT FIRST_NAME,DEPARTMENT,SALARY from employee;


--Q3: Delete all employees who are older than 34 years.

	SELECT * FROM employee;
	
	DELETE FROM employee
	WHERE age>34;


--Q4: Add a new column `email` to the `employees` table.

	ALTER TABLE EMPLOYEE
	ADD COLUMN email VARCHAR(100);
	
	SELECT * FROM employee;


--Q5: Rename the `department` column to `dept_name`.

	ALTER TABLE employee
	RENAME COLUMN DEPARTMENT TO DEPT_NAME;


--Q6: Retrieve the names of employees who joined after January 1, 2021.

	SELECT FIRST_NAME,LAST_NAME,JOINING_DATE FROM employee
	WHERE JOINING_DATE>'2021-01-01';

--Q7: Change the data type of the `salary` column to `INTEGER`.

	ALTER TABLE employee
	ALTER COLUMN SALARY TYPE INTEGER;


--Q8: List all employees with their age and salary in ascending order of salary.

	SELECT first_name, age, salary FROM employee 
	ORDER BY salary ASC;

--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

	INSERT INTO employee (first_name, last_name, dept_name, salary, joining_date, age)
	VALUES ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

	SELECT * FROM EMPLOYEE;

--Q10: Update age of employee +1 to every employee 

  
   UPDATE EMPLOYEE SET AGE=AGE+1;

   
	