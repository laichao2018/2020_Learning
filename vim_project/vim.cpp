#include<iostream>
#include<string>
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
    
    
    system("pause");
    return 0;
}