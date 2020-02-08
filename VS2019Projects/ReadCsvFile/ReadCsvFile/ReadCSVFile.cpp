#pragma once
#ifndef PROJECT_READ_CSV_FILE
#define PROJECT_READ_CSV_FILE
#include<iostream>
#include<string>
#include<vector>
#include<fstream>
#include<sstream>
using namespace std;

// 对CSV文件的读取操作
vector<vector<string>> ReadCSVFile(string FilePath) {
	vector<vector<string>>vvResult;
	ifstream inFile(FilePath.c_str(), ios::in);
	if (!inFile) {
		std::cout << "open file error.\n";
		return {};
	}
	string line_string;
	while (getline(inFile, line_string)) {
		stringstream ss(line_string);
		string str;
		vector<string>tempVecStr;
		while (getline(ss, str, ',')) {	//使用逗号分隔对象
			tempVecStr.push_back(str);
		}
		vvResult.push_back(tempVecStr);
	}
	inFile.close();
	return vvResult;
}

// 写入CSV文件的操作
bool WriteCSVFile(vector<vector<string>>& data,string file_path) {
	try {
		ofstream outFile;
		outFile.open(file_path, ios::out);
		if (!outFile) {
			cerr << "File write error.\n";
			return false;
		}
		for (auto aaa : data) {
			for (auto bbb : aaa) {
				outFile << bbb << ",";
			}
			outFile << endl;
		}
		outFile.close();
		return true;
	}
	catch (const exception & e) {
		std::cout << "Error happened in WriteCSVFile...\n";
		return false;
	}
}

int main() {
	//===

	system("pause");
	return 0;
}

#endif // !PROJECT_READ_CSV_FILE
