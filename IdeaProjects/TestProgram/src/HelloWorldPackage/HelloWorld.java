package HelloWorldPackage;

public class HelloWorld {
    public static int add_res(int a, int b) {
        return a + b;
    }

    public static void main(String[] args) {    // 该行快捷输入 =psvm=
        /*System.out.println("Hello World.\n");   // 该行快捷输入 =sout=
        System.out.println(add_res(1, 2));
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 20; j++) {
                System.out.print("*");
            }
            System.out.println();
        }*/
        Student pStu = new Student();
        pStu.Stu_Name = "Jack"; //修改类的成员的值
        System.out.println(pStu.Stu_Name);
        pStu.eat();
    }
}

