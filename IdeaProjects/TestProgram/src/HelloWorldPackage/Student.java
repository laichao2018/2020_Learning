package HelloWorldPackage;

// 创建类的步骤
// 导包(import) =》 创建 =》 使用
// 对于对当前类属于同一个包的类，可以不用导包

public class Student {
    String Stu_Name;    //姓名
    int age;    //年龄
    // DemoOverloadPrint pPrint = new DemoOverloadPrint();
    public void eat() { //成员函数没有static
        System.out.println("eat meal");
    }
    public Student(){
        System.out.println("构造函数执行...");
    }
}