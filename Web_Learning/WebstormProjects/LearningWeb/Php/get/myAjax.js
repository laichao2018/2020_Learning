function obj2str(obj) {
    obj.t = new Date().getTime();
    var sss = [];
    for (var key in obj) {
        sss.push(key + "=" + obj[key]);
    }
    return sss.join("&");
}

//// 封装的Ajax函数
function ajax(url, obj, timeOut, _success, _error) {
    //// 后两个对象为执行状态对应的处理操作的回调函数
    var xhr;   /// 创建一个异步对象
    //// 考虑IE浏览器兼容问题
    if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
    } else {
        xhr = ActiveXObject("Microsoft.XMLHTTP");
    }
    var str = obj2str(obj);
    var timer;
    //// ie浏览器规定一个url只有一个返回结果，
    //// 保证数据更新，使用在地址栏后增加随机的后缀，让url不一样
    var res = encodeURIComponent("张三");
    console.log(res);
    xhr.open("GET", url + "?" + str, true);    ///设置请求方式和请求地址
    xhr.send(); ///发送请求
    xhr.onreadystatechange = function () {      ///监听状态变化
        if (xhr.readyState === 4) { ///是否完成请求
            clearInterval(timer);
            /// 判断是否是请求成功
            if (xhr.status >= 200 && xhr.status < 300 || xhr.status === 304) {
                _success(xhr);
            } else {
                _error(xhr);
            }
        }
    };

    /// 判断是否连接超时
    if (timeOut) {
        timer = setInterval(function () {
            xhr.abort();    ////超时回调函数
            clearInterval(timer);
        }, timeOut);
    }


}