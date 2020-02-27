# 内值连接
### 查询每个城市的部门个数
SELECT `city` AS 城市, COUNT(*) AS 部门个数
FROM `locations` AS l
INNER JOIN `departments` AS d
ON l.`location_id`=d.`location_id`
GROUP BY l.`city`;

# 查询部门中员工个数大于10的部门名，并按照部门名降序
SELECT d.`department_name` AS 部门名, COUNT(*) AS 员工个数
FROM `departments` AS d
INNER JOIN `employees` AS e
ON d.`department_id`=e.`department_id`
GROUP BY d.`department_id`
HAVING COUNT(*)>10 
ORDER BY COUNT(*) DESC;


# 自连接
# 查询员工名h和对应的领导名
SELECT e.`last_name`,m.`last_name`
FROM `employees` AS e 
INNER JOIN `employees` AS m
ON e.`manager_id`=m.`employee_id`;











