import { flag } from "./js01.js"
import { add_num, Person } from "./js01.js"
import addr from "./js01.js"	//// 导入default，只可以有一个

// //// 全部导入
// import * as aaa from "./js01.js"
// /////  >>>>>>>
// console.log(aaa.flag);



if (flag) {
	console.log('Hello ES Module');
}

console.log(add_num(3, 10));

const p = new Person();	//// 新建一个对象
p.run();

console.log(addr);
