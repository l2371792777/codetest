//please run
//> g++ -o jsontest src/main.cpp -ljsoncpp
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <json/json.h> // or jsoncpp/json.h , or json/json.h etc.
#include <json/forwards.h>
#include <json/reader.h>
#include "readJson.h"

using namespace std;

void getleetcode(string filePath)
{
    Json::Value obj;
    obj = readJsonbasic::readjsonFile(filePath);
    vector<string> difficulty = {"Easy", "Medium", "Difficult"};
    string title = obj["title"].asString();
    string questionId = obj["questionId"].asString();
    string difficult = difficulty[obj["difficulty"].asInt()];

    string mdfilePath = "leet-test/leetcode";                                                             //markdown文件目录
    string tip = "title:" + title + "  \nquestionId:" + questionId + "  \ndifficult:" + difficult + "  "; //leetcode题目信息
    string strCmd = "echo -e \"" + tip + "\" >\'" + mdfilePath + "/[" + difficult + "]-" + questionId + "-" + title + ".md\'";
    runshell(strCmd, "r");
    cout << strCmd << endl;
}

void runshell(string strCmd, const char *type)
{
    FILE *pp = popen(strCmd.c_str(), type);
    pclose(pp);
}
