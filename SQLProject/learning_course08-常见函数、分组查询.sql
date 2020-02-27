# 常见函数
# 分组函数（聚合函数） 
/*
实现将一组数据进行统计计算，最终得到一个值
    sum(字段名)：求和
    avg(字段名)：求平均数
    max(字段名)：求最大值
    min(字段名)：求最小值
    count(字段名)：计算非空字段的个数
*/

1. 查询员工信息表中，所有员工的工资和、平均工资、最高最低工资、有工资的个数
SHOW DATABASES;
USE myemployees;

SELECT SUM(`salary`) 
FROM `employees`;

SELECT SUM(salary) AS 总工资,AVG(salary) AS 平均工资,MAX(salary) AS 最高工资,MIN(salary) AS 最低工资
FROM employees;

2. 添加筛选条件
=== 查询表中的记录数
SELECT COUNT(employee_id)
FROM employees;

=== 查询有工资的人数
SELECT COUNT(salary) AS 工资人数
FROM employees;

=== 查询工资大于2500的人数
SELECT COUNT(salary)
FROM employees
WHERE salary>=2500;

=== 查询有领导的人数
SELECT COUNT(manager_id)
FROM employees;

# count的补充介绍★
# 统计结果或者集的行数，推荐使用count
SELECT COUNT(*) # 查询不为空的总行数
FROM employees;

SELECT COUNT(*)
FROM employees
WHERE department_id=30;

SELECT COUNT(1)
FROM employees;

2. COUNT搭配DISTINCT实现去重的统计
SELECT COUNT(DISTINCT(department_id))  
FROM employees;

# 思考 查询每个部门的总工资、平均工资

# 查询各部门的工资
SELECT SUM(salary), department_id
FROM employees
GROUP BY department_id  # 按部门id分组

SELECT SUM(salary), department_id
FROM employees
GROUP BY department_id
ORDER BY SUM(salary) DESC;

# 分组查询，进阶

# 查询每个工种员工的平均工资
SELECT AVG(salary),job_id
FROM employees
GROUP BY job_id
ORDER BY AVG(salary);

# 查询每个领导的领导人数
SELECT manager_id, COUNT(*)
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;


# 查询邮箱中包含a字符的，每个部门的最高工资
SELECT MAX(salary) AS 最高工资, department_id
FROM employees
WHERE email LIKE '%a%' AND department_id IS NOT NULL
GROUP BY department_id;

# 查询有奖金的每个领导手下员工的平均工资
SELECT AVG(salary) AS 平均工资, manager_id AS 领导
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY manager_id;

# 查询哪个部门的员工个数大于五
# ===> 查询每个部门的员工个数
SELECT department_id, COUNT(*) AS 员工个数
FROM employees
GROUP BY department_id
HAVING COUNT(*)>5;

# ☆ 顺序 ☆
WHERE -> GROUP BY -> HAVING

# 每个工种有奖金的员工的最高工资>12000的工种编号和最高工资
SELECT job_id,MAX(salary)
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY job_id
HAVING MAX(salary)>12000;

# 查询每个领导手下员工的最低工资
SELECT manager_id, MIN(salary) AS 最低工资
FROM employees
GROUP BY manager_id;

# 查询领导编号大于102的每个领导手下的最低工资大于5000的最低工资
SELECT manager_id, MIN(salary) AS 最低工资
FROM employees
WHERE manager_id>102
GROUP BY manager_id
HAVING MIN(salary)>5000;

# 查询每个工种没有奖金的员工最高工资大于6000的工种编号和最高工资，按最高工资升序
SELECT job_id AS 工种编号, MAX(salary) AS 最高工资
FROM employees
WHERE commission_pct IS NULL
GROUP BY job_id
HAVING MAX(salary)>6000
ORDER BY MAX(salary) ASC;

# 按照多个字段进行分组
# 查询每个工种，每个部门的最低工资，并按照最低工资降序排序
SELECT 
  MIN(salary) AS 最低工资,
  job_id AS 工种,
  department_id AS 部门 
FROM
  employees # WHERE department_id is not null
GROUP BY job_id,
  department_id 
ORDER BY MIN(salary) ;

# ☆==☆==☆==☆==☆==☆==☆==☆==☆==☆==☆==☆==☆
语法：
    SELECT 查询列表
    FROM 表名
    WHERE 筛选条件
    GROUP BY 分组列表
    HAVING 分组后筛选
    ORDER BY 排序列表

执行顺序：
    1. FROM 子句
    2. WHERE 子句
    3. GROUP BY 子句
    4. HAVING 子句
    5. SELECT 子句
    6. ORDER BY 子句

