import requests

kv = {'wd': 'Python'}
url = 'http://www.baidu.com/s'
r = requests.get(url, params=kv)


# print(r.status_code)
# print(r.encoding)
# print(r.request.url)
# print(len(r.text))


def SearchBaiduPage(url):
    try:
        kv = {'wd': 'Python'}
        r = requests.get(url, params=kv)
        print(r.request.url)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        # print(r.text)
        print(len(r.text))
        return
    except:
        print('Error')
        return

def Search360Page(url):
    try:
        kv={'q':'Python'}
        r=requests.get(url,params=kv)
        print(r.request.url)
        r.raise_for_status()
        print(len(r.text))
        print(r.text)
        return
    except:
        print('Error')
        return


if __name__ == '__main__':
    baiduURL = 'http://www.baidu.com/s'
    _360URL='http://www.so.com/s'
    SearchBaiduPage(baiduURL)
    Search360Page(_360URL)
