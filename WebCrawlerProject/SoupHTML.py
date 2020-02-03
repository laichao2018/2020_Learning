import requests
from bs4 import BeautifulSoup

url = "http://python123.io/ws/demo.html"
r = requests.get(url)
print(r.status_code)
demo = r.text
soup = BeautifulSoup(demo, "html.parser")
# print(soup.title)

# tag = soup.a  # 打印 a 标签
# print(tag)
# print(soup.a.parent.parent.name)    # 获取标签的父节点或者子节点的名字
# print(tag.attrs)    # 打印标签的属性
# print(tag.attrs['class'])   # 打印a标签的class属性值
# print(tag.attrs['href'])    # 打印a标签的链接属性值
# print(tag.attrs['id'])  # ===

# print(type(tag.attrs))  # 标签属性的类型
# print(type(tag))
# print(tag.string)

# tag01 = soup.p
# print(tag01)
# print(tag01.string)
