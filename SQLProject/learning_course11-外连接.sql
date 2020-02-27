# 外连接（左、右连接）
# 说明：查询结果为表中所有的记录，如果从表中有匹配项，则显示匹配项，没有则显示null
# 应用场景：一般用于查询主表中有但从表没有的记录
# 特点：
#	外连接分主从表，l两者的顺序不能调换
#	左连接的话，left join左表为主表
# 	右连接的话，right join右表为主表

语法：
	FROM 查询列表
	LEFT | RIGHT OUTER JOIN 表2 别名
	ON 连接条件
	WHERE 筛选条件;

USE girls;
# 查询所有女神记录，以及对应的男神名，如果没有对应的男神，则显示null
SELECT 
  b.*,
  bo.* 
FROM
  `beauty` AS b 
  LEFT JOIN `boys` AS bo 
    ON b.`boyfriend_id` = bo.`id` ;

# 查询哪个女神没有男朋友
 
SELECT 
  b.*,
  bo.* 
FROM
  `beauty` AS b 
  LEFT JOIN `boys` AS bo 
    ON b.`boyfriend_id` = bo.`id` 
WHERE bo.`id` IS NULL ;	# 筛选

	
# 使用右连接重新查询上题
SELECT 
  b.*,
  bo.* 
FROM
  `boys` AS bo 
  RIGHT JOIN `beauty` AS b 
    ON b.`boyfriend_id` = bo.`id` 
WHERE bo.`id` IS NULL ;

# 查询哪个部门没有员工，并显示其部门编号和部门名
SELECT 
  d.`department_id`,
  d.`department_name` # 哪个部门 -> 表示部门表为主表
FROM
  `employees` AS e 
  RIGHT JOIN `departments` AS d 
    ON e.`department_id` = d.`department_id` 
WHERE e.`employee_id` IS NULL ;

# 查询没有员工的部门个数
SELECT 
  COUNT(*) 
FROM
  `departments` AS d 
  LEFT JOIN `employees` AS e 
    ON d.`department_id` = e.`department_id` 
WHERE e.`employee_id` IS NULL ;

# 全外连接
LEFT / RIGHT = = > FULL 

# 查询编号大于3的女神的男朋友信息，如果有则列出详细信息，如果没有，用null表示
SELECT 
  b.`id`,
  b.`name`,
  bo.* 
FROM
  `beauty` AS b 
  LEFT JOIN `boys` AS bo 
    ON b.`boyfriend_id` = bo.`id` 
WHERE b.`id` > 3 
ORDER BY b.`id`;

# 查询哪个城市没有部门
SELECT l.`city`
FROM `locations` AS l 
LEFT JOIN `departments` AS d
ON l.`location_id`=d.`location_id`
WHERE d.`department_id` IS NULL;

# 查询部门名为SAL或者IT的员工的信息
SELECT /* d.`department_name`, */e.*
FROM `employees` AS e
LEFT JOIN `departments` AS d
ON e.`department_id`=d.`department_id`
WHERE d.`department_name`='SAL' OR d.`department_name`='IT';


