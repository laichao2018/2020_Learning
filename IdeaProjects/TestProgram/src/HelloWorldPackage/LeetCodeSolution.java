package HelloWorldPackage;

import java.lang.reflect.Array;

public class LeetCodeSolution {
    public void main(String[] args) {

    }

    // 面试题 10.01. 合并排序的数组
    public void merge(int[] A, int m, int[] B, int n) {
        int[] result = new int[m + n];
        for (int i = 0; i < A.length; i++) {
            result[i] = A[i];
        }
        for (int i = m; i < B.length + A.length; i++) {
            result[i] = B[i - m];
        }
        //Array.sort(result);
    }
}
