import requests
import os


# save_path = '/home/laichao/Home_Study_Files/WebCrawlerProject/pirctures/wolf.jpg'
# url='http://image.nationalgeographic.com.cn/2017/0211/20170211061910157.jpg'
# r=requests.get(url)
# print(r.status_code)
#
# with open(save_path,'wb') as f:
#     f.write(r.content)

def getWebPictures(url, save_path):
    try:
        path = save_path + url.split('/')[-1]   # 得到文件路径 + 文件名
        if not os.path.exists(save_path):
            os.mkdir(save_path) # 如果保存路径不存在的话，则新建一个目录
        if not os.path.exists(path):
            r=requests.get(url)
            with open(path,'wb') as f:  # 保存爬取得到的图片
                f.write(r.content)
                f.close()
                print("OK, picture have saved...")
        else:
            print('picture have already exists...')
    except:
        print('crawler failed...')

if __name__ == '__main__':
    url = 'http://image.nationalgeographic.com.cn/2017/0211/20170211061910157.jpg'
    path = '/home/laichao/Home_Study_Files/WebCrawlerProject/pirctures/'
    getWebPictures(url, path)
