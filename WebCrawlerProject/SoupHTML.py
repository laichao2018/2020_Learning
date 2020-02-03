import requests
from bs4 import BeautifulSoup

# url = "http://python123.io/ws/demo.html"
# r = requests.get(url)
# print(r.status_code)
# demo = r.text
# soup = BeautifulSoup(demo, "html.parser")
# print(len(soup.body.contents))
# print(soup.body.contents[1])
# print(soup.title)
# for child in soup.body.children:  # 遍历儿子节点
#     print(child)
# print(soup.html.parent)

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


# ===========  ===========
#       Tag Tree Code
# ===========  ===========

url = "http://python123.io/ws/demo.html"
r = requests.get(url)
demo = r.text
soup = BeautifulSoup(demo, 'html.parser')
print(soup)

# for parent in soup.a.parents:
#     if parent is None:
#         print(parent)
#     else:
#         print(parent.name)
#
# for sibling in soup.a.next_siblings:    # 遍历后续节点,带s结尾是迭代类型，只能用在for等循环
#     print(sibling)
#
# print('\n====================================\n')
# for sibling in soup.a.previous_siblings:    # 遍历前序节点
#     print(sibling)