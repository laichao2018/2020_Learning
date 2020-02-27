# 子查询：当一个查询语句中又嵌套了另一个完整的select语句
# 外层select语句称为主查询语句

# 分类：按子查询出现的位置进行分类
1. SELECT后面：
	要求：子查询的结果为单行单列（标量子查询）
2. FROM后面
	要求：子查询的结果可以为多行多列
3. WHERE或HAVING后面 ***
	要求：子查询的结果必须为单列
		多行子查询
		单行子查询
4. EXISTS后面
	要求：子查询的结果必须为单列

特点：
	1、子查询放在条件中，必须放在条件右侧
	2、子查询一般放在小括号中
	3、子查询的执行优于主查询

# 查询和 Zlotkey 相同部门的员工姓名和工资
SELECT `last_name`,`salary`
FROM `employees`
WHERE `department_id`= (SELECT `department_id`
FROM `employees`
WHERE `last_name`='Zlotkey');

# 查询工资比公司平均工资高的员工的员工号，姓名和工资
SELECT 
  `employee_id`,
  `last_name`,
  `salary` 
FROM
  `employees` 
WHERE `salary` > 
  (SELECT 
    AVG(`salary`) 
  FROM
    `employees`) ;

# 多行子查询
	IN 查询某个字段是否在某个列表内
	ANY / SOME 判断某字段的值是否满足其中任一个 X> ANY (10, 20, 30) = = > X> MIN(10, 20, 30) (等价) 
	ALL 判断某字段的值是否满足里面所有的 X> ALL (10, 20, 30) = = > X> MAX(10, 20, 30) (等价) # 返回location_id是1400或1700部门中的所有员工姓名

SELECT 
  `last_name` 
FROM
  `employees` 
WHERE `department_id` IN 
  (SELECT 
    `department_id` 
  FROM
    `departments` 
  WHERE `location_id` IN (1400, 1700)) ;

# 查询部门编号是50的员工个数
SELECT 
  (SELECT 
    COUNT(*) 
  FROM
    `employees` 
  WHERE `department_id` = 50 ;

) 个数 # 放在from后面
# 查询每个部门的平均工资的工资级别(缺失表格)
SELECT 
  AVG(`salary`),
  `department_id` 
FROM
  `employees` 
GROUP BY `department_id` # 放在exists后面
 
# 查询有无名字叫张三丰的员工信息
 SELECT 
    EXISTS 
    (SELECT 
      * 
    FROM
      `employees` 
    WHERE `last_name` = '张三丰' 

) 有无;

# 查询没有女朋友的男神信息
SELECT bo.*
FROM `boys` AS bo
WHERE bo.`id` IN(
	SELECT `boyfriend_id`
	FROM `beauty` AS b
);

# END