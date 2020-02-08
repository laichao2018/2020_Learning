#pragma once
#ifndef PROJECT_READ_CSV_FILE
#define PROJECT_READ_CSV_FILE
#include<iostream>
#include<string>
#include<vector>
#include<fstream>
#include<sstream>
using namespace std;
int main() {
	string FilePath("Data\\read_csv_test_file.csv");
	ifstream inFile(FilePath.c_str(), ios::in);
	if (!inFile) {
		cout << "read file error..\n";
		return 0;
	}
	string lineStr;
	vector<vector<string>>strArray;
	while (getline(inFile, lineStr)) {
		//cout << lineStr << endl;
		stringstream ss(lineStr);
		string str;
		vector<string>lineArray;
		while (getline(ss, str, ',')) {	//·Ö¸ô¶ººÅ·ûºÅ
			lineArray.push_back(str);
		}
		strArray.push_back(lineArray);
	}
	for (vector<string> iii : strArray) {
		for (string sss : iii) {
			cout << sss << " ";
		}
		cout << endl;
	}
	system("pause");
	return 0;
}
#endif // !PROJECT_READ_CSV_FILE
