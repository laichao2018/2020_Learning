#  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #
SELECT 
  `last_name`,
  DATE_FORMAT(`hiredate`, '%Y'),
  MONTH(`hiredate`) # 提取日期的月份
FROM
  `employees` 
ORDER BY `hiredate` ASC ;

#  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #
SELECT DATE_FORMAT(NOW(),'%Y年%m月%d日');

#  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #
