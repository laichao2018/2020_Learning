# 条件查询
SELECT * 
FROM `employees`
WHERE `employee_id` <> 100;

# 查询部门编号不是50-100之间的员工的姓名，部门编号，邮箱
SELECT `last_name`,`department_id`,`email`
FROM `employees`
WHERE NOT(`department_id`<=50 AND `department_id`>=100);

# 查询奖金率>0.03 或者 员工编号在60-100之间的员工信息
SELECT *
FROM `employees`
WHERE `commission_pct`>0.03 OR (`employee_id`>=60 AND `employee_id`<=100);

# 模糊查询
# 1. like / not like
# 查询姓名中包含字符a的员工信息
SELECT *
FROM `employees`
WHERE `last_name` LIKE '%a%';

# 查询姓名中最后一个字符为e的员工信息
SELECT *
FROM `employees`
WHERE `last_name` LIKE "%e";

# 查询姓名中第三个字符为x的员工的信息
SELECT *
FROM `employees`
WHERE `last_name` LIKE "__x%";	# 不分大小写

# 第二个字符为下划线的员工的信息
SELECT *
FROM `employees`
WHERE `last_name` LIKE '_\_%';	# 添加转义字符
#另外一种写法
SELECT *
FROM `employees`
WHERE `last_name` LIKE '_$_%' ESCAPE '$';

# in 用于查询某字段的值是否属于指定的列表之内(not in)
# 查询部门编号是30/50/90的员工名，部门编号
SELECT `last_name`,`department_id`
FROM `employees`
WHERE `department_id` IN (30,50,90);
# 另一种写法(执行效率相等)
SELECT 
  `last_name`,
  `department_id` 
FROM
  `employees` 
WHERE `department_id` = 30 
  OR `department_id` = 50 
  OR `department_id` = 90 
  
# 查询工种编号不是ST_CLERK或者IT_PROG的员工信息
SELECT * 
FROM `employees`
WHERE `job_id` NOT IN('ST_CLERK','IT_PROG');
 
# between 判断某个字段的值是否介于XX之间
# 查询部门编号是30-90之间的部门编号，员工姓名
SELECT `department_id`,`last_name`
FROM `employees`
WHERE `department_id` BETWEEN 30 AND 90;	# 小的在前，大的在后
# 查询年薪不是100000-200000之间的员工姓名，工资，年薪
SELECT 
  `last_name`,
  `salary`,
  `salary` * 12 * (1+ IFNULL(`commission_pct`, 0)) AS '年薪'
FROM `employees`
WHERE `salary` * 12 * (1+ IFNULL(`commission_pct`, 0)) NOT BETWEEN 100000 AND 200000

# is null / is not null
# 查询奖金率为空的员工信息
SELECT *
FROM `employees`
WHERE `commission_pct` IS NULL;	# 不能用 = 号，它只能判断普通内容， 而 is 只能判断NULL值
# <=>安全等于，什么都可以判断
SELECT *
FROM `employees`
WHERE `commission_pct` <=> NULL;





