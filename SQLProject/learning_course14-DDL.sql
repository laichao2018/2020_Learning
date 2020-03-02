# 操作数据库，操作表
# DDL语言：数据定义语言 Data Define Language
# 数据的管理和操作

#======================库的管理======================
一、创建数据库
CREATE DATABASE stuDB;
CREATE DATABASE IF NOT EXISTS stuDB;

二、删除数据库
DROP DATABASE stuDB;
DROP DATABASE IF EXISTS stuDB;

三、修改数据库的名（很少这么操作）
===> 去安装的文件夹中去修改，需要重新启动数据库服务

#======================表的管理======================
一、创建表
CREATE TABLE 表明(
	字段名 字段类型 【字段约束】
	字段名 字段类型 【字段约束】
	字段名 字段类型 【字段约束】
	字段名 字段类型 【字段约束】
)

# 案例
CREATE TABLE IF NOT EXISTS stuInfo(
	stuID INT,
	stuName VARCHAR(20),
	stuGender CHAR,
	Email VARCHAR(20),
	bornData DATETIME
);
DESC `stuinfo`;

== 数据类型 ==
整型：
	TINYINT SMALLINT INT BIGINT 
浮点型：
	FLOAT(m,n) DOUBLE(m,n) DECIMAL(m,n)   # m,n 可选参数，m表示小数加整数的总长，n表示小数的位数
字符型：
	CHAR(n) # n可选  	# n表示最多的字符个数
	VARCHAR(n) # n必选    
	TEXT
日期型：
	DATE 	TIME DATETIME TIMESTAMP
二进制型：
	TINYBLOB BLOB MEDIUMBLOB LONGBLOB # 存储类似图片视频等二进制文件数据

# 常见的字段约束
说明：用于限制表中字段数据的，从而进一步保证数据表的数据是一致的、准确的、可靠的

# 六大约束
NOT NULL 非空，用于限制该字段为必选项

DEFAULT 默认，用于限制该字段没有填，则显示默认值

PRIMARY KEY 主键，用于限制该字段的值不能重复，该字段默认不能为空，
	一个表只能有一个主键，但是可以组合主键
	
UNIQUE 唯一，用于限制该字段不能重复，UNIQUE可以有多个（跟主键的不同之处）

CHECK 检查，用于限制该字段值必须满足指定条件
	CHECK(字段名 LIKE 1 AND 100);	MySQL不支持，但是不会报错

FOREIGN KEY 外键，用于限制两个表的关系，要求外键列的值必须来自主表的关联列，在从表中添加
	要求：主表关联列和从表的关联列类型、意义要一致，
	主表的关联列必须要求是主键
	
# 添加约束的案例
DROP IF EXISTS stuInfo;
CREATE TABLE IF NOT EXISTS stuInfo(
	stuID INT PRIMARY KEY,
	stuName VARCHAR(20) UNIQUE NOT NULL,
	stuGender CHAR DEFAULT,
	Email VARCHAR(20),
	bornData DATETIME,
	age INT CHECK(age BETWEEN 0 AND 100),
	majorID INT,
	CONSTRAINT fk_stuinfo_major FOREIGN KEY (majorID) REFERENCES major(id)
);

# 修改表
语法：
ALTER TABLE 表明 ADD|MODIFY|CHANGE|DROP COLUMN 字段名 字段类型 【字段约束】;
# 修改表名
ALTER TABLE `employee` RENAME TO `employees`;	
# 添加字段
ALTER TABLE `employees` ADD COLUMN bornDate TIMESTAMP NOT NULL;
# 修改字段名
ALTER TABLE `employees` CHANGE COLUMN bornDate birthday TIMESTAMP, NULL;	#后面加上类型名，类型，约束
# 修改字段类型
ALTER TABLE `employees` MODIFIER COLUMN birthday TIMESTAMP; # 后面加上修改后的类型
# 删除字段
ALTER TABLE `employees` DROP COLUMN birthday;

DESC `employees`;

# 删除表
DROP TABLE IF EXISTS stuInfo;

# 复制表
CREATE TABLE new_table LIKE `departments`; # 仅仅复制表的结构
DROP TABLE IF EXISTS new_table;

CREATE TABLE new_table2 SELECT * FROM `departments`;
DROP TABLE IF EXISTS new_tables3;

CREATE TABLE new_table2 SELECT * FROM `girls`.`beauty`; # 从其他数据库中复制 

# 复制表的其中几列到新表，但不复制数据
CREATE TABLE new_tables3 SELECT `last_name`,`email`,`phone_number` FROM `myemployees`.`employees` WHERE 1=2;

=================== TEST ===================
1. 使用分页查询，查询员工信息表中部门为50号的工资最低的五名员工信息
SELECT *
FROM `employees`
WHERE `department_id`=50
ORDER BY `salary` ASC
LIMIT 0,5;

2. 使用子查询实现城市为Toronto的，且工资大于10000的员工姓名
SELECT `last_name` 
FROM `employees`
WHERE `salary`>10000 AND `department_id`=(SELECT `department_id`
FROM `departments` AS d
INNER JOIN `locations` AS l
ON l.`location_id`=d.`location_id`
WHERE `city`='Toronto');



