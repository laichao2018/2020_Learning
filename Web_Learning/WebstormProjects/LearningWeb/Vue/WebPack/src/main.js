// import { add, mul } from "./mathUtils.js"
const {add, mul} = require('./JavaScript/mathUtils.js')
import {name, age, height} from "./JavaScript/info";

// console.log(add(10, 34));
// console.log(mul(23, 23));
//
// console.log(name);

//// 添加css文件依赖
require('./CSS/normal.css');

//// 添加less文件依赖
require('./CSS/special.less');

//// 使用Vue进行开发
import Vue from 'vue'

//// el 与 template 的区别
//// template编译的时候将会替代html页面的div内容

//// 抽离
// import App from './vue/app'
import App from './vue/App.vue'

const vm = new Vue({
    el: '#app',
    template: '<App></App>',    //// 使用组件
    //// 注册组件
    components: {
        App
    }
})

document.writeln("<p style='font-size: 100px'>我是你爸爸</p>")