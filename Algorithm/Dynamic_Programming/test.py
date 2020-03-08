import numpy as np

arr=[1,2,4,1,7,8,3]
arr02=[3,34,4,12,5,2]

# 求数组中到第i(从位置0开始)个元素位置的前元素总和最大的值，要求被计算元素不相邻
# 方法一：递归方法
def rec_opt(arr,i):
    if(i==0):
        return arr[0]
    elif(i==1):
        return max(arr[0],arr[1])
    else:
        A=rec_opt(arr,i-2)+arr[i]
        B=rec_opt(arr,i-1)
        return max(A,B)
    
def dp_opt(arr, i):
    opt=np.zeros(len(arr))
    opt[0]=arr[0]
    opt[1]=max(arr[0],arr[1])
    for i in range(2,len(arr)): # 从2开始到arr的长度
        A=opt[i-2]+arr[i]
        B=opt[i-1]
        opt[i]=max(A,B)
    return opt[len(arr)-1]

# 题2：给定一个数组，和一个sum，问容器中的数字相加是否存在最后结果等于sum，有返回数字个数，
def rec_subset(arr01,i,s):  # 都是从后往前走
    if(s==0):   # 终止条件1，开始时s=0或者遇到了相加等于1
        return True
    elif i==0:  # 终止条件2，在数组第一个位置时，看这个数是否等于s
        return arr[0]==s
    elif arr[i]>s:  # 不选当前数
        return rec_subset(arr01,i-1,s)
    else:   
        A=rec_subset(arr01,i-1,s-arr[i])    # 选择当前数
        B=rec_subset(arr01,i-1,s)          # 不选择当前数
    return A or B

# 方法二：非递归方式
def dp_subset(arr,sum):
    subset=np.zeros((len(arr),sum+1),dtype=bool)     # 创建一个二维数组
    subset[:,0]=True
    subset[0,:]=False
    subset[0,arr[0]]=True   # 第一行除了第一列之外，只有这列会为True
    for i in range(1,len(arr)):
        for j in range(1,sum+1):
            if arr[i]>j:    # arr[i]表示用来相加的数字，j表示sum以内的数字
                subset[i,j]=subset[i-1,j]
            else:
                A=subset[i-1,j-arr[i]]
                B=subset[i-1,j]
                subset[i,j]=A or B
    return subset[len(arr)-1,sum]

if __name__=='__main__':
   # print(rec_opt(arr,6))
   # print(dp_opt(arr,6))
    if dp_subset(arr02,9):
        print("Yes.\n")
    else:
        print("No.\n")
        



