# ----------------- SQL92语法 -----------------
# 一、内连接

# 二、等值连接
    语法：
        SELECT 查询列表
        FROM 表名1，表名2，...
        WHERE 等值连接的连接条件
    特点：
        1. 为了解决多表中字段重名的问题，往往为表起别名，提高语义性
        
# 查询员工名和部门名
SELECT `last_name`, `department_name`
FROM `employees` AS e,`departments` AS d
WHERE e.`department_id`=d.`department_id`;

# 查询部门编号大于100的部门名和所在的城市名
SELECT 
  `department_name` AS 部门名,
  `city` AS 城市名 
FROM
  `departments` AS d,
  `locations` AS l 
WHERE d.`location_id` = l.`location_id` 
  AND `department_id` > 100 ;

# 查询有奖金的员工名和部门名
SELECT 
  `last_name` AS 员工名,
  `department_name` AS 部门名 
FROM
  `employees` AS e,
  `departments` AS d 
WHERE e.`commission_pct` IS NOT NULL 
  AND e.`department_id` = d.`department_id` ;

# 查询城市名中第二个字符为o的部门名和城市名
SELECT 
  `department_name` AS 部门名,
  `city` AS 城市名 
FROM
  `departments` AS d,
  `locations` AS l 
WHERE l.`city` LIKE '_o%' 
  AND d.`location_id` = l.`location_id` ;
 
 # 查询每个城市的部门个数 ****
SELECT `city` AS 城市, COUNT(*) AS 部门个数
FROM `departments` AS d, `locations` AS l
WHERE d.`location_id`=l.`location_id`
GROUP BY l.`city`;	# GROUP BY 后面接的都是“每个**”后面的东西

# 查询哪个部门的员工数大于5，并按员工的个数降序排序 ***
SELECT `department_name`, COUNT(*)
FROM `departments` AS d,`employees` AS e
WHERE d.`department_id`=e.`department_id`
GROUP BY e.`department_id`
HAVING COUNT(*)>5
ORDER BY COUNT(*) DESC;

# ----------------- SQL99语法 -----------------
# 内连接：等值与非等值
SELECT 
  = = 
FROM
  = = [ 
  INNER ] 
  JOIN 表名别名 
    ON 连接条件 
WHERE = = 
GROUP BY = = 
HAVING = = 
ORDER BY = = 
###### SQL99用JOIN代替了SQL92中的逗号，且连接条件和筛选条件进行了分离
  
  
  # 查询员工名和部门名
  SELECT 
    `last_name`,
    `department_name` 
  FROM
    `employees` AS e 
    INNER JOIN `departments` AS d 
      ON e.`department_id` = d.`department_id` ;

# 查询部门编号大于100的部门名和所在的城市名
SELECT 
  `department_name`,
  `city` 
FROM
  `departments` AS d 
  INNER JOIN `locations` AS l 
    ON d.`location_id` = l.`location_id` 
WHERE d.`department_id` > 100 ;

# 查询每个城市的部门个数
SELECT `city` AS 城市, COUNT(*) AS 部门个数
FROM `locations` AS l
INNER JOIN `departments` AS d
ON d.`location_id`=l.`location_id`
GROUP BY l.`city`;

# 查询哪个部门的员工数大于5，并按员工的个数降序排序
SELECT `department_name` AS 部门名称, COUNT(*) AS 员工个数
FROM `departments` AS d
INNER JOIN `employees` AS e
ON d.`department_id`=e.`department_id`
GROUP BY e.`department_id`
HAVING COUNT(*)>5
ORDER BY COUNT(*) DESC;

# 三、非等值连接
# 四、自连接
 