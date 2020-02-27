# 进阶  分页查询
# 应用场景：页面数据显示不全的时候，需要分页显示
 LIMIT + 起始条目索引，显示的条目数特点：其实条目索引默认从 0 开始，不写表示默认 # 查询员工信息表的前五行
 
SELECT 
  * 
FROM
  `employees` 
LIMIT 3, 5 ;	# 显示从03行开始的五行数据
# 查询有奖金的，且工资较高的前11名至20名的员工信息
SELECT 
  * 
FROM
  `employees` 
WHERE `commission_pct` IS NOT NULL 
ORDER BY `salary`  DESC
LIMIT 10, 10 ;

# 假如要显示的页数是page，每页的条目数是size
SELECT *
FROM ++
ORDER BY ++
LIMIT (page-1)*size,size;

# 联合查询
# 当查询结果来自多张表，但多张表之间没有关联，这时候使用联合查询
# UNION查询（查询结果的列数要求要一致）
# UNION自动去重
SELECT 1,'FBB'
UNION 
SELECT 1,'FBB'
UNION 
SELECT 1,'FBB'
UNION 
SELECT 1,'FBB'

# UNION自动去重
SELECT 1,'FBB'
UNION 
SELECT 1,'FBB'
UNION 
SELECT 1,'FBB'
UNION 
SELECT 1,'FBB'

SELECT 1,'FBB'	# 取消自动去重
UNION ALL
SELECT 1,'FBB'
UNION ALL
SELECT 1,'FBB'
UNION ALL
SELECT 1,'FBB'

# 查询
