#include <iostream>
#include <vector>
using namespace std;

//DP问题：选择与不选择的问题

//递归方法会出现重叠子问题，计算效率低，会重复计算
//使用动态规划的方法做，效率会得到提高

// 求数组中到第i(从位置0开始)个元素位置的前元素总和最大的值，要求被计算元素不相邻
int rec_max_opt(vector<int> arr, int i)
{
    if (i == 0)
    {
        return arr[0];
    }
    if (i == 1)
    {
        return max(arr[0], arr[1]);
    }
    int a = arr[i] + rec_max_opt(arr, i - 2); //选择
    int b = rec_max_opt(arr, i - 1);          //不选择
    return max(a, b);
}

int dp_max_opt(vector<int> arr, int i)
{
    vector<int> all_nums(arr.size(), 0);
    all_nums[0] = arr[0];
    all_nums[1] = max(arr[0], arr[1]);
    for (int i = 2; i < arr.size(); i++)
    {
        int choose_me = arr[i] + all_nums[i - 2];
        int dont_choose_me = arr[i - 1];
        all_nums[i] = max(choose_me, dont_choose_me);
    }
    return all_nums[arr.size() - 1];
}

// 题2：给定一个数组，和一个sum，问容器中的数字相加是否存在最后结果等于sum，有返回数字个数，
// 没有返回false
// 方法一：递归的方法
bool rec_subset(vector<int> nums, int i, int sum)
{
    //终止条件
    if (sum == 0)
    {
        return true;
    }
    //只有第一个数，或者轮到了第一个数字的时候
    else if (i == 0)
    {
        return nums[0] == sum;
    }
    // 如果当前数大于了sum,不选择当前数
    else if (nums[i] > sum)
    {
        return rec_subset(nums, i - 1, sum);
    }
    else
    {
        return rec_subset(nums, i - 1, sum - nums[i]) || rec_subset(nums, i - 1, sum);
    }
}

bool dp_subset(vector<int> nums, int sum)
{
    vector<vector<bool>> subset; // 构建一个二维数组
    vector<bool> sub_vec;
    for (int i = 0; i <= sum; i++)
    {
        sub_vec.push_back(true);
    }
    for (int i = 0; i < nums.size() + 1; i++)
    {
        subset.push_back(sub_vec);
    }

    for (int i = 0; i < subset.size(); i++)
    {
        if (i == 0) //第一行
        {
            for (int j = 0; j < subset[i].size(); j++)
            {
                subset[i][j] = false;
            }
        }
        for (int j = 0; j < subset[i].size(); j++)
        {
            if (j == 0)
            {
                subset[i][j] = true;
            }
            if ((i == 0) && (j == nums[0]))
            {
                subset[i][j] = true;
            }
        }
    }

    for (int i = 1; i < subset.size(); i++)
    {
        for (int j = 1; j < subset[i].size(); j++)
        {
            if (nums[i] > j)
            {
                subset[i][j] = subset[i - 1][j];
            }
            else
            {
                bool a = subset[i - 1][j];
                bool b = subset[i - 1][j - nums[i]];
                subset[i][j] = a || b;
            }
        }
    }
    int row = subset.size();
    int col = subset[0].size();
    return subset[row - 1][col - 1];
}

int main()
{
    vector<int> vec{3, 34, 4, 12, 5, 2};
    // cout << rec_max_opt(vec, 6);
    // cout << dp_max_opt(vec, 6) << endl;

    if (dp_subset(vec, 9))
    {
        cout << "Yes.\n"
             << endl;
    }
    else
    {
        cout << "No.\n"
             << endl;
    }

    return 0;
}
