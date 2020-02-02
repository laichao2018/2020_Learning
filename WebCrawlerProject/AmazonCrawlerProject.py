import requests


# r = requests.get("http://www.amazon.cn/gp/product/B01M8L5Z3Y")
# print(r.status_code)
# print(r.encoding)
# print(r.request.headers)

# kv = {'user-agent': 'Mozilla/5.0'}
# r = requests.get("http://www.amazon.cn/gp/product/B01M8L5Z3Y", headers=kv)
# print(r.request.headers)
# print(r.text)


def getAmazonItemPage(url):
    try:
        kv = {'user-agent': 'Mozilla/5.0'}
        r = requests.get(url, headers=kv)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text[1000:3000]
    except:
        return "产生异常"


if __name__ == '__main__':
    url = "http://www.amazon.cn/gp/product/B01M8L5Z3Y"
    print(getAmazonItemPage(url))
