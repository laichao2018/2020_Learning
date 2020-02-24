# 流程控制函数
1. IF 函数
SELECT IF(100>9,'Good','Bad');	# True:执行参数1; False:执行参数2
SELECT 
  IF(
    `commission_pct` IS NULL,
    0,
    `salary` * 12 * `commission_pct`
  ) AS '奖金' 
FROM
  `employees` 2. 
  CASE
    函数 
    CASE
      表达式 
      WHEN 值 1 
      THEN 结果 1 
      WHEN 值 2 
      THEN 结果 2...
      ELSE 结果 n 
    END # ****************** 
    
    
    SELECT 
      `department_id`,	# 1.
      `salary`,		# 2.
      CASE
        `department_id` 
        WHEN 30 
        THEN `salary` * 2 
        WHEN 50 
        THEN `salary` * 3 
        WHEN 60 
        THEN `salary` * 4 
        ELSE `salary` 
      END AS new_salary # 3.
    FROM
      `employees` ;

# 如果工资大于20000，显示级别A，
#	大于15000，显示级别B
#	大于10000，显示级别C
# 	否则，显示D
SELECT 
  `salary`,
  CASE
    WHEN `salary` > 20000 
    THEN 'A' 
    WHEN `salary` > 15000 
    THEN 'B' 
    WHEN `salary` > 10000 
    THEN 'C' 
    ELSE 'D' 
  END AS 'grade' 
  FROM `employees`;