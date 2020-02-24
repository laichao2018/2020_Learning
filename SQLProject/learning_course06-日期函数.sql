# 日期函数
1. 获取当前时间
SELECT NOW();

2. 获取当前日期
SELECT CURDATE();

3. 获取当前时间
SELECT CURTIME();

4. 获取两个日期之差
SELECT DATEDIFF('2020-02-24','1996-07-17');	# 前面减去后面

5. 日期格式
SELECT DATE_FORMAT('1996-07-17','%Y年%m月%d日 %H小时%i分%s秒') AS 出生日期;

6. STR_TO_DATE 按指定格式解析字符串为日期类型
SELECT STR_TO_DATE('3/15 1998','%m/%d %Y');
SELECT * FROM `employees`
WHERE hiredate > STR_TO_DATE('3/15 1998','%m/%d %Y');	#查询入职日期小于指定值的员工
