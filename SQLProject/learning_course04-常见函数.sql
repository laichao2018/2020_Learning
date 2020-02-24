# 常见函数
/*
1. 自定义方法（函数）
2. 调用方法（函数）

常见函数：
	字符函数
	数学函数
	日期函数
	流程控制函数
*/

# 字符函数
1. 拼接字符
SELECT CONCAT('Hello',' ',`first_name`,' ',`last_name`) AS '备注'
FROM `employees`;

2. 获取字节长度
SELECT LENGTH('Hello,张无忌'); # utf8字符集，一个汉字8字节，占用3位

3. CHAR_LENGTH 获取字符长度
SELECT CHAR_LENGTH('Hello,张无忌');	# 字符长度，一个字符占一个字节

4. SUBSTRING 截取字串
# substr(str,起始索引，1开始，截取的字符长度)
# substr(str,起始索引，1开始)
SELECT SUBSTR('Hello World!',1,5);
SELECT SUBSTR('Hello World!',7);

5. INSTR 获取字符第一次出现的索引
SELECT INSTR('Hello World','llo');

6. TRIM 去前后指定的字符，默认是空格
SELECT TRIM(' 虚 竹    ') AS a;
SELECT TRIM('x' FROM 'xxxxxxx虚x竹xxxxxx') AS a;

7. LPAD/RPAD 左/右填充
SELECT LPAD('木婉清',10,'a');
SELECT RPAD('木婉清',10,'a');

# 查询员工表的姓名，要求格式：姓首字符大写，其他字符小写，名所有字符大写，且姓和名之间用_分隔，最后起别名“” 
SELECT CONCAT( CONCAT(UPPER(SUBSTR(`first_name`,1,1)), LOWER(SUBSTR(`first_name`,2))),'_',UPPER(`last_name`)) AS "OUT_PUT"
FROM `employees`;

8. STRCMP 比较两个字符串大小
STRCMP('aas','asc') # 左边大返回1，一样大返回0，右边大返回-1

9. LEFT / RIGHT 截取子段
SELECT LEFT("Hello",2);	# 获取左边两个字符
SELECT RIGHT("World",3);