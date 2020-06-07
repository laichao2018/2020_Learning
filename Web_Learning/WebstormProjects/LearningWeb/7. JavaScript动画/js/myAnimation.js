//// 改变透明度与宽度、高度
window.onload = function () {
    var allBoxs = document.getElementsByTagName('div');
    for (var i = 0; i < allBoxs.length; i++) {
        allBoxs[i].onmouseover = startAnimation(this, 'width', 600, function () {
            startAnimation(this, 'height', 400);
        });
        allBoxs[i].onmouseout = startAnimation(this, 'width', 300, function () {
            startAnimation(this, 'height', 200);
        })
    }
}

function startAnimation(obj, attr, endTarget, fn) {
    clearInterval(obj.timer);
    obj.timer = setInterval(function () {
        var curr = 0;
        if (attr === 'opacity') {
            curr = Math.round(parseFloat(getStyle(obj, attr)) * 100);   /// 四舍五入
        } else {
            curr = parseInt(getStyle(obj, attr));
        }
        speed = (endTarget - curr) / 20;
        speed = endTarget > curr ? Math.ceil(speed) : Math.floor(speed);
        if (endTarget === curr) {
            if (fn) {   /// 如果有的话执行
                fn();
            }
            clearInterval(obj.timer);
        } else {
            if (attr === 'opacity') {
                obj.style[attr] = `alpha(opacity:${curr + speed})`;
                obj.style[attr] = (curr + speed) / 100;
            } else {
                obj.style[attr] = curr + speed + 'px';
            }
        }
    }, 30);
}

function getStyle(obj, attr) {
    if (obj.currentStyle) {
        return obj.currentStyle[attr];
    } else {
        return getComputedStyle(obj, null)[attr];
    }
}