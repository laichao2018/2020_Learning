// // /// 创建一个对象
// // var obj = new Object();
// // obj.name = "Monkey_Sun";
// // obj.age = 10;
// //
// // ///对象的属性值可以是任意类型数据，也可以是个函数
// // obj.sayName = function () {
// //     console.log(obj.name);
// // }
// //
// // obj.sayName();
//
// var obj = {
//     name: "Monkey_Sun",
//     age: 18,
//     address: "Mountain",
//     gender: "Female"
// }
//
// //for ... in 语句，对象中有几个属性就会执行几次
// //每次执行的时候，会将对象的属性的名字赋值给变量
// for (var n in obj) {
//     console.log(n); // 输出属性名
// }
// for (var n in obj) {
//     console.log(obj[n]);    //[]可以传变量
//                     // 输出属性值
// }

// // this
// function fun() {
//     console.log(this.name);
// }
//
// var obj = {
//     name: "Monkey_Sun",
//     sayName: fun
// }

// 以函数形式调用的时候，this就是Windows
// 以方法的形式调用时，this就是调用的那个对象

//console.log(obj.sayName == fun);    ///实际上是同一个东西
//obj.sayName();
//fun();

// /// 创建一个对象
// /// 使用工厂方法生产对象———————— 用的不多
// function CreateObjectFun(name, age, gender) {
//     var obj = new Object();
//     obj.name = name;
//     obj.age = age;
//     obj.gender = gender;
//     obj.sayName = function () {
//         return this.name;
//     }
//     return obj;
// }
//
// var obj1 = CreateObjectFun("hhh", 12, "f");
// var obj2 = CreateObjectFun("ooo", 23, "m");
//
// console.log(obj1);
// console.log(obj2);

// 构造函数
// 创建一个构造函数，创建方式和普通函数没有区别，不同的是构造函数习惯于首字母大写
// 普通函数是直接调用，构造函数需要加一个new关键字来进行调用
// 构造函数的执行流程
//      1. 立即创建一个新的对象
//      2. 将新建的对象设置为函数中this，在构造函数中可以使用this来引用新建的对象
//      3. 逐行执行函数中代码
//      4. 将新建的对象作为返回值进行返回
// 使用同一个构造函数创建的对象称为同一类对象，
// 也将一个构造函数称为一个类
// function Person(name, age, gender) {
//     this.name = name;
//     this.age = age;
//     this.gender = gender;
//     this.sayName = fun();
// };
// ///防止每次创建对象的时候都创建一个新的function增加内存消耗的一种解决办法
// function fun() {
//     console.log(this.name);
// }
//
// var per01 = new Person("Monkey_Sun", 18, "Female");
// var per02 = new Person("Pig_Zhu", 28, "Female");
// // 使用关键字 instanceof 区分是否是该对象的实例
// // console.log(per01 instanceof Person);
// console.log(per01.sayName == per02.sayName);











