#include"include/functions.h"
#include<string>
#include<cmath>
using namespace std;

bool isNumber(char c){  //判断字符是否为数字
    bool flag=false;
    if(c>='0'&&c<='9'){
        flag=true;
    }
    return flag;
}

string ValidString(string str){ //返回有效的字符串
    if(str.empty()){
        return "";
    }
    bool number_start_flag=false;
    string validString;
    for(int i=0;i<str.length();i++){
        if(isNumber(str[i])){
            number_start_flag=true;
            validString+=str[i];
        }
        if((str[i]==' ')&&!number_start_flag){
            continue;
        }
        if((str[i]==' ')&&number_start_flag){
            return validString;
        }
        if(!isNumber(str[i])&&number_start_flag){
            return validString;
        }
        if(str[i]=='-'&&!number_start_flag){
            if(i==str.length()-1){
                return "";
            }
            else{
                if(isNumber(str[i+1])){
                    number_start_flag=true;
                    validString+='-';
                }
            }
        }
        if(!isNumber(str[i])&&!number_start_flag){
            return validString;
        }
    }
    return validString;
}

int myAtoi(string str){
    
}