//alert("Hello World.\n");    //弹出窗口显示

//document.write("Hello World.\n"); //向HTML->body写入

//console.log("Hello World.\n");

//script 标签一旦用于外部文件，就不能在内部写，写了也不会执行；
//如有需要可以新建一个script标签

//强制类型转换
/*var a = 123;
console.log(typeof a);
a = a.toString()    //转String
console.log(typeof a);
String(a);  //适用范围更广
var s = "123";
s = Number(s);  //字符串转数值，非数值结果为NaN，空或空格字符串结果为0，Boolean转结果0或1
console.log(typeof s);*/

/*var a = "123px";
//a = parseInt(a);  //把一个字符串转Int\ parseFloat()
a = parseInt(a, 10);   //第二个参数表示要转换成的进制
var b = "123.4px";
b = parseFloat(b);  //对于要转换非String类型的值，会将值先转成String再计算*/

/* var a = 0x123;  //十六进制
 var b = 0xfff;
 var c = 0o70;   //八进制
 var d = 0b110;  //二进制*/

// // 运算符/操作符
// var a = 100;
// var result = typeof a;
// console.log(result);

// var result = "123" + 1;
// console.log(result);

// console.log(1 == 1);

// document.write("<h1><b>Hello World.<\h1>\n");
/// ！JS中变量是保存在栈内存的，对象都是保存在堆内存中（new了一个堆内存空间）
/// ！栈内存中保存堆内存中对象的地址，指向它的对象，每创建一个新的对象都会在堆内存中开辟一个空间
/// ！栈内存中的对象可以指向同一个堆内存对象，当一个变量修改属性的时候，另一个对应的指向的值也会改变
/*var obj = new Object();
var obj3 = new Object();
var obj2 = obj; //指向与变量obj同一个堆内存对象
obj2 = null;  //断开连接

console.log(obj);
console.log(obj2);
console.log(obj==obj3); //比较的是两个变量保存的指向堆内存对象的地址，因为不是一个对象，不管
// 里面的属性值是否相等，都是返回false*/

/*//使用字面量创建对象
var obj = {};
obj.name = "Monkey_Sun";
var obj2 = {name: "Pig_Zhu"}
console.log(typeof obj);
console.log(obj2);*/

// //创建一个函数对象——(在开发中很少或者是基本不使用这种方式)
// //将要封装的代码以字符串的形式传递给构造函数
// var Func = new Function("console.log('Hello JavaScript.\n')");
// /// 封装到函数的代码不会立即执行
// /// 函数中代码将在函数调用的时候执行：调用函数 语法：函数对象()
// Func();

// //使用函数声明来创建一个函数
// // 语法：
// //      function 函数名([形参1、形参2 ...]){
// //          语句...
// //      }
// function fun2() {
//     console.log("My first JavaScript Function.\n");
// }
// fun2();

// //使用函数表达式来创建函数
// // var 函数名 = function([形参1、形参2 ...]){
// //     语句...
// // }
// var fun3 = function () {
//     console.log("我是匿名函数.\n");
// }
// fun3();

// //==================函数参数==================
// function Sum(a, b) {
//     console.log(a + b);
// }
//
// //调用函数时，解析器不会检查实参的数量，按顺序取，少了实参设为NaN
// //函数的实参可以是任意的类型
// Sum(100, 99);

// 如果没有return就是返回一个undefined
// 如果return后面没有东西也相当于返回一个undefined
// function sum(a, b, c) {
//     return a + b + c;
// }
//
// function display_function(a) {
//     console.log(a);
// }
//
// //函数也是一个对象，可以当作参数进行传递
// display_function(sum);  //可以将函数名当作参数进行传递
// display_function(sum(1, 2, 3));
// display_function(function () {});   //传递匿名函数

// //函数的返回值可以是任意对象
// //函数的返回值可以是对象，也可以是函数
// function display() {
//     return {name: "hello", age: 1}; //返回值是一个对象
// }

// function fun3() {
//     function fun4() {
//         alert("function4.");
//     }
//     return fun4;
// }
//
// a = fun3();
// a();
// fun3()();   //相当于fun4()

//立即执行函数___函数对象()
//往往只会保存一次
// (function () {
//     alert("我是一个匿名函数");
// })();

// /// 带有参数的立即执行函数
// (function (a, b) {
//     console.log("a = " + a);
//     console.log("b = " + b);
// })(123, 456);