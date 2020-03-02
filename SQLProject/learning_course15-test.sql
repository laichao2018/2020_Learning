# 查询在部门的location为1700的部门工作的员工的员工号
SELECT 
  `employee_id` 
FROM
  `employees` 
WHERE `department_id` IN 	# 在多个结果中进行查询
  (SELECT DISTINCT 
    `department_id` AS 部门编号 
  FROM
    `departments` 
  WHERE `location_id` = 1700) ;

# 分页查询
# 语法
SELECT 
  查询列表 
FROM
  表名 
WHERE 筛选条件 
LIMIT 起始索引，条目数 # 联合查询
# 修改语句
# 删除语句
  # DDL语言的学习
  1. 库和表的管理创建、删除、复制表（复制数据与不复制数据）字段名字段类型【字段约束】添加新字段： ALTER TABLE 表名 
    ADD COLUMN 字段名字段类型【字段约束】复制表结构 LIKE 复制表结构和数据： CREATE TABLE 表名子查询 # 练习
    
# 子查询
    1. 查询各部门中工资比本部门平均工资高的员工的员工号，姓名和工资 
    SELECT 
      `employee_id`, `last_name`, `salary` 
    FROM
      `employees` AS e 
      INNER JOIN 
        (SELECT 
          `department_id`, AVG(`salary`) AS ag # 连接查询表
        FROM
          `employees` 
        GROUP BY `department_id`) AS new_table 
        ON e.`department_id` = new_table.`department_id` 
    WHERE e.`salary` > new_table.ag ;

# 查询和姓名中包含字母u的员工在相同部门的员工的员工号和姓名
SELECT 
  `employee_id`,
  `last_name` 
FROM
  `employees` 
WHERE `department_id` IN 
  (SELECT DISTINCT 
    `department_id` 
  FROM
    `employees` 
  WHERE `last_name` LIKE '%u%') ;

# 查询管理者是King的员工姓名和工资
SELECT 
  `last_name` , `salary`
FROM
  `employees` 
WHERE `manager_id` IN 
  (SELECT 
    `employee_id` 
  FROM
    `employees` 
  WHERE `last_name` LIKE 'k_ing') ;

# 查询平均工资最低的部门信息和该部门的平均工资
SELECT 
  d.ag,
  e.* 
FROM
  `departments` AS e 
  INNER JOIN 
    (SELECT 
      AVG(`salary`) AS ag,
      `department_id` 
    FROM
      `employees` 
    GROUP BY `department_id` 
    ORDER BY ag 
    LIMIT 0, 1) AS d 
    ON e.`department_id` = d.`department_id` ;

# 查询各个部门中最高工资中最低的那个部门的最低工资是多少
SELECT 
  MIN(`salary`) 
FROM
  `employees` AS e 
WHERE `department_id` = 
  (SELECT 
    `department_id` 
  FROM
    `employees` 
  GROUP BY `department_id` 
  ORDER BY MAX(`salary`) 
  LIMIT 0, 1) ;

