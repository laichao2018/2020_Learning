import requests


def getJDItemPage(url):
    try:
        r = requests.get(url)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text[:1000]
    except:
        return '产生异常'


# def getAmazonItemPage(url):
#     try:
#         r=requests.get(url)
#         r.raise_for_status()
#         r.encoding=r.apparent_encoding
#         return r.text
#     except:
#         return '产生异常'

if __name__ == '__main__':
    JDurl = 'http://item.jd.com/2967929.html'
    # Amazonurl='http://www.amazon.cn/gp/product/B01M8L5Z3Y'
    print(getJDItemPage(JDurl))
