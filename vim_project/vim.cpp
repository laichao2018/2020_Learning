#include<iostream>
#include<string>
#include<vector>
using namespace std;
int titleToNumber(string s){
    if(s.empty()){
        return 0;
    }
    int result=0;
    for(int i=s.length()-1;i>=0;i--){ //从后往前走
        if(s[i]>='A'&&s[i]<='Z'){
            result+=i*26+s[i]-'A'+1;
        }
    }
    return result;
}


int main(){
    vector<int>vec{1,2,3,4,5};
    for(auto init:vec){
        cout<<init<<endl;
    }

    system("pause");
    return 0;
}
