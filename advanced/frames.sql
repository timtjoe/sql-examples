SELECT date, sales 
            AVG(sales) OVER (
              ORDER BY date 
              ROWS BETWEEN 6 PRECEDING AND CURRENT ROW 
            ) AS rolling_7days_avg 
FROM daily_sales;

-- Common frames
SUM(amount) OVER (ORDER BY date)

AVG(value) OVER (
  ORDER BY date 
  ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING 
)

amount 100.0 / SUM(amount) OVER (PARTITION BY category)