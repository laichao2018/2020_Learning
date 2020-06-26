var name = '小明'
var age = 18
var flag = true

function sum(num01, num02) {
	return num01 + num02;
}

if (flag) {
	// console.log(sum(20, 20));
}

export {
	flag,
	sum
}

//// 导出方式2
export var ex_num01_02 = 1000;
export let ex_height_02 = 100;

/// 导出函数
export function add_num(num01, num02) {
	return num01 + num02;
}

//// 导出类
export class Person {
	run() {
		console.log('Running');
	}
}

///  
const address = 'Beijing';
export default address;	//// 只可以有一个 default
