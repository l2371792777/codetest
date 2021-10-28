//please run
//> g++ -o jsontest src/main.cpp -ljsoncpp
#include <iostream>
#include <fstream>
#include <string>
#include <json/json.h> // or jsoncpp/json.h , or json/json.h etc.
#include <json/forwards.h>
#include <json/reader.h>
#include "readJson.h"

using namespace std;

// struct TreeNode
// {
//     int val;
//     TreeNode *left;
//     TreeNode *right;
//     TreeNode() : val(0), left(nullptr), right(nullptr) {}
//     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
//     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
// };
