-- Grouping Sets
SELECT country, city, SUM(sales)
FROM sales 
GROUP BY GROUPING SETS ((country), (city), ());

-- RollUp
SELECT year, quarter, SUM(sales)
FROM sales 
GROUP BY ROLLUP (year, quarter);

-- Cube 
SELECT region, channel, SUM(sales)
FROM sales 
GROUP BY CUBE (region, channel);