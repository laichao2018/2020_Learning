# 排序查询
/*

语法：
select 查询列表
from 表名
【where 筛选条件】	# 可选
order by 排序列表

特点：
1. 排序列表可以是多个字段，单个字段，表达式，函数，列表以及以上的集合
2. 升序，通过asc，默认行为
   降序，通过desc
*/

# 按照单个字段排序查询
SELECT *
FROM `employees`
WHERE `employee_id`>120
ORDER BY `salary` DESC;	# 查询出的结果按照salary进行降序
# 按表达式排序
# 对有奖金的员工，按年薪降序
SELECT 
  *,
  12 * `salary` * (IFNULL(1+ `commission_pct`, 0)) AS '年薪' 
FROM
  `employees` 
WHERE `commission_pct` IS NOT NULL 
ORDER BY 12 * `salary` * (1+ IFNULL(`commission_pct`, 0)) DESC ;
# 按照别名进行排序
SELECT 
  *,
  12 * `salary` * (1+ IFNULL(`commission_pct`, 0)) AS '年薪' 
FROM
  `employees` 
WHERE `commission_pct` IS NOT NULL 
ORDER BY 年薪 DESC ; 	# 按照别名进行排序

# 按函数的结果排序
# 按姓名的字数长度进行升序
SELECT `last_name`	
FROM `employees`
WHERE `first_name` IS NOT NULL
ORDER BY LENGTH(`last_name`) DESC;	# 获取字符长度的函数
# 按多个字段排序
# 查询员工的姓名，工资，部门编号；先按照工资升序，再按照部门编号降序
SELECT 
  `last_name`,
  `salary`,
  `department_id`
FROM
  `employees` 
ORDER BY `salary` ASC,
  `department_id` DESC ;	# 按多个字段排序

# 按照列数进行排序（比较少见）
SELECT *
FROM `employees`
ORDER BY 2;	# 按照第二列进行排序
