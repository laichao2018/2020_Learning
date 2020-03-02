# 数据库的事务
# 一条或者多条sql语句构成，这一条或者多条sql语句要么全部执行成功，要么全部失败

# 事务的四大特性
# 原子性、一致性、隔离性、持久性

# 隐式事务：不具有明显的开启和结束标记
	# insert、update、delete语句本身就是一条事务
# 显示事务：具有明显的开启和结束标记
	# 一般由多条sql语句组成，必须具有明显的开启和结束标记
步骤：
	（先取消隐式事务自动开启的功能）
	1.开启事务
	2.编写事务需要的SQL语句（一或多条）
	3.结束事务
	
# 演示事务使用步骤
# 1. 取消事务自动开启
SET autocommit=0;
# 2. 开启事务
START TRANSACTION;
# 3. 编写事务的sql语句
UPDATE `stuinfo` SET `stuName`='HandSome' WHERE `stuID`=1;
UPDATE `stuinfo` SET `stuName`='Beautiful' WHERE `stuID`=2;
# 结束事务
	# 提交
	#commit;
	# 或者回滚
	ROLLBACK;

SELECT *
FROM `stuinfo`;
