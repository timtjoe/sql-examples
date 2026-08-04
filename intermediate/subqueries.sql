SELECT name
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employee);

-- in SELECT: a value computed per output row
SELECT name, salary,
      salary - (SELECT AVG(salary) FROM employee) AS diff_from_avg
FROM employees;

-- with IN: the complement (careful with NULLs)
SELECT name FROM customers
WHERE id IN (SELECT customer_id FROM orders); -- customers who ordered

-- with NOT IN: the complement (careful with Nulls)
SELECT name FROM customers 
WHERE id NOT IN (SELECT customer_id FROM orders);

-- in FROM: a subquery as a derived table
SELECT dept, avg_sal FROM (
  SELECT department AS dept, AVG(salary) as avg_sal
  FROM employees GROUP BY department
) AS dept_avgs WHERE avg_sal > 60000;

-- Practice
SELECT name FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
