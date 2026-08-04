SELECT name, department, salary,
      AVG(salary) OVER (PARTITION BY department) AS dept_avg,
      RANK()      OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employees;