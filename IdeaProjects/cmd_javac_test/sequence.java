// 顺序执行
// if - else 语句
// switch 语句

public class sequence {
    public static void main(String[] args) {
        // System.out.println("Good Weather.\n");
        // DemoIfElseExt();
        // DemoSwitchExt();
        DemoAddEvenNumber();
    }

    public static void DemoIfElseExt() {
        int x = 10;
        int y = 10;
        if (x > 3) {
            y *= x;
        }
        System.out.println(y);
    }

    public static void DemoSwitchExt() {
        int x = 1;
        switch (x) {
            case 1:
                System.out.println("one");
                break;
            case 2:
                System.out.println("two");
                break;
            default:
                break;
        }
    }

    public static void DemoAddEvenNumber() {
        int result = 0;
        for (int i = 0; i <= 100; i++) {
            if (i % 2 == 0) {
                result += i;
            }
        }
        System.out.println(result);
    }
}