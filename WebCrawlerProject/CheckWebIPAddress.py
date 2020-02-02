import requests


# url = "http://m.ip138.com/ip.asp?ip="
# r=requests.get(url+'202.204.80.112')
# print(r.status_code)
# print(r.text[-500:])

def getWebIPAddress(url):
    try:
        url += '202.204.80.112'     # 输入要查询的网站ip
        r = requests.get(url)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        print(r.text[-500:])
    except:
        print('查询失败')


if __name__ == '__main__':
    url = 'http://m.ip138.com/ip.asp?ip='
    getWebIPAddress(url)
