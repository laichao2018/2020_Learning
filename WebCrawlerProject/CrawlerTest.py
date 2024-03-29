import requests
from bs4 import BeautifulSoup


#
# r = requests.get("http://www.baidu.com")
# r.status_code
# print(r)
#
# r.encoding='utf-8'
# print(r.text) #显示网页内容

# def getHTMLText(url):
#     try:
#         r = requests.get(url)
#         r.raise_for_status()  # 如果状态值不等于200，引发HTTPError异常
#         r.encoding = r.apparent_encoding
#         return r.text
#     except:
#         return "产生异常"
#
#
# if __name__ == "__main__":
#     url = "http://www.baidu.com"
#     print(getHTMLText(url))

# payload = {'key1': 'value1', 'key2': 'value2'}
# r = requests.post('http://httpbin.org/post', data=payload)
# print(r.text)   # 向URL POST一个字典，自动编码为form（表单）

# r = requests.post('http://httpbin.org/post', data='ABC')
# print(r.text)   # 向URL POST一个字符串，自动编码为data

# kv = {'key1': 'value1', 'key2': 'value2'}
# r = requests.request('GET', "http://python123.io/ws", params=kv)
# print(r.url)

# hd = {'user-agent': 'chrome/10'}    # 定制HTTP头
# r = requests.request('POST', 'http://python123.io/ws', headers=hd)

# url = 'http://python123.io/ws/demo.html'
# r = requests.get(url)
# print(r.status_code)
# demo = r.text
#
# soup = BeautifulSoup(demo, "html.parser")
# print(soup.prettify())

def ParsingHTML(url):
    try:
        r = requests.get(url)
        r.raise_for_status()
        demo = r.text
        soup = BeautifulSoup(demo, 'html.parser')  # 对HTML文档进行解析
        soup01 = BeautifulSoup(demo, 'xml')
        soup02 = BeautifulSoup(demo, 'html5lib')
        return soup02
    except:
        return "解析失败"


if __name__ == "__main__":
    url = 'http://python123.io/ws/demo.html'
    print(ParsingHTML(url))
