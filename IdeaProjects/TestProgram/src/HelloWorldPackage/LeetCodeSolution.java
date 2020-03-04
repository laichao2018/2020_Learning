package HelloWorldPackage;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class LeetCodeSolution {
    public void main(String[] args) {

    }

    // 面试题 10.01. 合并排序的数组
    public void merge(int[] A, int m, int[] B, int n) {
        while (m > 0 && n > 0) {
            if (A[m - 1] > B[n - 1]) {
                A[m + n - 1] = A[m - 1];
                m--;
            } else {
                A[m + n - 1] = B[n - 1];
                n--;
            }
        }
        while (n > 0) {
            A[m + n - 1] = B[n - 1];
            n--;
        }
    }

    // 面试题 08.09. 括号
    public List<String> generateParenthesis(int n) {
        List<String> list = new ArrayList<>();
        if (n == 0) {
            return list;
        }
        backtrack("", 0, 0, n, list);
        return list;
    }

    private void backtrack(String combination, int open, int close, int n, List<String> list) {
        if (combination.length() == 2 * n) {
            list.add(combination);
            return;
        }
        if (open < n) {
            backtrack(combination + "(", open + 1, close, n, list);
        }
        if (close < open) {
            backtrack(combination + ")", open, close + 1, n, list);
        }
    }
}
