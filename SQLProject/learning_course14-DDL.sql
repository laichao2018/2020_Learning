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






















