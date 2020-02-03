import requests
from bs4 import BeautifulSoup
import re  # 引入正则表达式库

url = "http://python123.io/ws/demo.html"
# url = 'http://www.baidu.com'
r = requests.get(url)
demo = r.text
soup = BeautifulSoup(demo, 'html.parser')

# for link in soup.find_all('a'):
#     print(link.get('href'))

# for tag in soup.find_all(re.compile('b')):  # 利用正则表达式库，找到所有以b开头的标签
#     print(tag.name)

# print(soup.find_all('p','course'))  # 打印带有course属性值的p标签

# print(soup.find_all(id='link1'))    # 打印id为link1的标签
# print(soup.find_all(id='link'))   # 结果为空
# print(soup.find_all(id=re.compile('link')))  # 利用正则表达式进行搜索

