import requests
from bs4 import BeautifulSoup
import bs4

url = 'http://zuihaodaxue.cn/zuihaodaxuepaiming2016.html'


def getHTMLText(url):
    try:
        r = requests.get(url, timeout=30)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text
    except:
        return ""


def fillUnivList(ulist, html):
    soup = BeautifulSoup(html, 'html.parser')
    for tr in soup.find('tbody').children:
        if isinstance(tr, bs4.element.Tag):  # 判断tr是否属于这个bs4元素标签
            tds = tr('td')
            ulist.append([tds[0].string, tds[1].string, std[2].string])


def printUnivList(ulist, num):
    print("{:^10}\t{:^6}\t{:^10}".format("排名", "学校", "总分"))
    for i in range(num):
        u = ulist[i]
        print("{:^10}\t{:^6}\t{:^10}".format(u[0], u[1], u[2]))


def main():
    uinfo = []
    html = getHTMLText(url)
    fillUnivList(uinfo, html)
    printUnivList(uinfo, 20)  # 20 university
