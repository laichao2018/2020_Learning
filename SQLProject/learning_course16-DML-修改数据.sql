# DML语句
# Data Manipulation Language 数据操作语言
INSERT DELETE UPDATE 	# 增删改

# 关于数据的插入
# 语法：
INSERT INTO 表名(字段1，字段2，...) VALUES (值1，值2，...);
# 特点：
1. 字段和值列表一一对应，类型约束必须匹配
2. 数值型不用单引号，其他要
3. 字段顺序无要求

# 案例
USE `studb`;
DESC `stuinfo`;

INSERT INTO `stuinfo` (
  `stuID`,
  `stuName`,
  `stuGender`,
  `Email`,
  `bornData`
) 
VALUES
  (
    1,
    'LaiChao',
    'male',
    'laichao2011@vip.qq.com',
    '1996-08-30'
  ) ;

SELECT *
FROM `stuinfo`;

# 案例：可以为空字段插入 => 列名和值都省略
# 案例：默认字段插入 => 写列名不写值，会变为默认值

# 自增长字段 ==== ! ! ! ====
CREATE TABLE gradeInfo(
	gradeID INT PRIMARY KEY AUTO_INCREMENT,
	gradeName VARCHAR(20)
);

SELECT *
FROM `gradeinfo`;

INSERT INTO `gradeinfo` VALUES(NULL,'test');	# NULL => 表示自增长主键，默认情况是不用写具体值

# 注意：
# 自增长列必须设置在一个键上，比如主键或者唯一键
# 自增长列要求数值类型必须为数值型
# 一个表至多有一个自增长列


# 数据的删除
# 语法：
方式一：DELETE 语句
	DELETE FROM 表名 WHERE 筛选条件
方式二：TRUNCATE 语句 


# 案例：删除姓李的所有信息
DELETE FROM `stuinfo`
WHERE `stuName` LIKE '李%';

# delete 和 truncate 的区别
1. DELETE 可以添加WHERE条件
	TRUNCATE不能添加WHERE条件，一次性清除所有数据

2. TRUNCATE删除效率更高，因为不是逐行去查找再删
3. 如果删除带自增长列的表
	使用DELETE删除后，重新插入数据，记录从断点处开始
	使用TRUNCATE删除后，重新插入数据，记录从1开始
4. DELETE删除数据，会返回受影响的行数
	TRUNCATE删除数据，不会返回受影响的行数
5. DELETE删除数据，可以支持事务回滚
	TRUNCATE删除数据，不支持事务回滚










