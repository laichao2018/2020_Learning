package HelloWorldPackage;
// 数组的初始化方式：1 动态初始化（指定长度）、2 静态初始化（指定内容）

//内存问题
// 栈：
//函数的运行都是在栈中运行
//都是函数的局部变量，超出定义域，会从栈内存中消失
//堆
//凡是new出来的东西都在堆当中
//函数区
//存储.class相关信息，包含函数的信息
//本地函数栈
//与操作系统相关
//寄存器
//与CPU相关

public class DemoBasicArray {
    public static void main(String[] args) {
        int[] arrA = new int[100];    //动态初始化，指定长度
        double[] arrB = new double[200];
        String[] arrC = new String[100];
        int[] staticArr = new int[]{1, 2, 3};
        int[] ArrD = {1, 3, 4}; // 省略格式
        //System.out.println(StaticArr[0]);
        //System.out.println(StaticArr);  //打印地址值
        //System.out.println(arrA.length);
        //System.out.println(arrA[0]);
    }
}
