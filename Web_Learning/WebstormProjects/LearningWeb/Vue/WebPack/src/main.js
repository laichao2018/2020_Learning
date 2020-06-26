// import { add, mul } from "./mathUtils.js"
const {add, mul} = require('./JavaScript/mathUtils.js')
import {name, age, height} from "./JavaScript/info";

console.log(add(10, 34));
console.log(mul(23, 23));

console.log(name);

//// 添加css文件依赖
require('./CSS/normal.css');

//// 添加less文件依赖
require('./CSS/special.less');
document.writeln('<h2>你好啊，李银河！</h2>');
