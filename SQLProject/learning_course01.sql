 # 基础查询语句======记得末尾加分号
/*
语法：
select 查询列表 from 表名;

特点：
1. 查询的结果集，是一个虚拟表
select后跟的查询列表，可以有多个部分组成，中间用逗号隔开
例如：select 字段1/字段2/... 表达式 from 表；

执行顺序：
1. from子句
2. select子句

查询列表可以是：字段，表达式，常量，函数等；

*/

# 查询常量
SELECT 100;	# 选中执行，可以仅执行选中部分的代码

# 查询表达式
SELECT 100%3;

# 查询单个字段
SELECT 'last_name' FROM `employees`;

# 查询函数
SELECT `last_name`,`email`,`job_id` FROM `employees`;last_name;

# 查询所有字段
SELECT * FROM `employees`;

SELECT # SQLyog可以使用F12快捷键进行代码格式化
  `first_name`,
  `last_name`,
  `email` 
FROM
  `employees` 
  
# 查询函数（调用函数，获取返回值）
SELECT DATABASE();	# 查看当前执行的数据库
SELECT VERSION();	# 查看数据库的版本
SELECT USER();		# 查看数据库的使用者
  
# 起别名
SELECT USER() AS 用户名;
SELECT USER() AS "用户名";
SELECT USER() AS '用户名';

SELECT last_name AS "姓名" FROM `employees`;
SELECT last_name "姓名" FROM `employees`;	# AS可不加

# 拼接
-- 需求： 查询first_name 和 last_name 拼接成的全名，最终起别名为： 姓，名
SELECT `first_name` + `last_name` AS "姓 名"	# 出错，详见下部分解释
FROM `employees`;

# mysql 中 + 的作用只有一个：1. 加法运算
# 如果两个操作数都是数值型，则正常加；若是其中一个操作数为字符型，则强制将之转成数值型，
# 若无法进行转换，则直接当作 0 处理
# 例如：'张无忌'+100 = 100; 
# 其中一个操作数为NULL，其结果都是NULL
# 例如： NULL + 100 = NULL
# MySQL中使用拼接函数
SELECT 
  CONCAT(`first_name`,' ', `last_name`) AS "姓名" # 拼接函数
FROM
  `employees` 
  
# 关键字distinct的使用
# 需求：查询员工涉及到的部门编号有哪些
SELECT DISTINCT `department_id` FROM `employees` # DISTINCT用于去除重复

# 查看表的结构
DESC `employees`;
SHOW COLUMNS FROM `employees`;

# ifnull 函数
SELECT 
  `commission_pct`,
  IFNULL(`commission_pct`, '空') 
FROM
  `employees` #判断字段是否为null，是的话显示参数2
# 有个逗号
  # 显示出表employees的全部列，各部分之间用逗号连接，列头显示成OUT_PUT
  SELECT 
    CONCAT(
      `employee_id`,
      ',',
      `first_name`,
      ',',
      `last_name`,
      ',',
      `salary`,
      ',',
      IFNULL(`commission_pct`, ' ')
    ) AS "OUT_PUT" 
  FROM
    `employees` 
      