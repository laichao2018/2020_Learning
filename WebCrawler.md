+ LaiChao
### 小兴趣：网络爬虫
---
1. **Python爬虫库**
**robots.txt**: 网络爬虫排除标准

>> Request库: 自动爬取页面，自动网络请求提交
- 需要理解各种文字编码的区别
- **status_code==200** 表示链接成功
    ```python
    def getHTMLText(url):
        try:
            r = requests.get(url)
            r.raise_for_status()  # 如果状态值不等于200，引发HTTPError异常
            r.encoding = r.apparent_encoding
            return r.text
        except:
            return "产生异常"


    if __name__ == "__main__":
        url = "http://www.baidu.com"  # http://不可少
        print(getHTMLText(url))
    ```

>> Beautiful Soup库: 解析页面

>> Re库: 正则表达式详解，提取页面关键信息

>> Scrapy: 网络爬虫库

---
2. **http协议**
&emsp; HTML文档 = 标签树 = BeautifulSoup类。 BeautifulSoup对应一个HTML/XML文档的全部内容
+ BeautifulSoup库解析器（4种）：bs4的HTML解析器===pip install beautifulsoup4===、
- lxml的HTML解析器===pip install lxml===、
- lxml的XML解析器===pip install lxml===、
- html5lib的解析器pip install html5lib


**BeautifulSoup库的使用：**
&emsp; 可以用.<tag>（如：.p）表示标签；.name 表示名称；.attrs 表示属性；.string 表示非属性字符串

信息标记语言： **XML、JSON、YAML**