//please run
//> g++ -o jsontest src/main.cpp -ljsoncpp
#include <iostream>
#include <fstream>
#include <json/json.h> // or jsoncpp/json.h , or json/json.h etc.
#include <json/forwards.h>
#include <json/reader.h>

using namespace std;

struct TreeNode
{
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

void createData(TreeNode *root, Json::Value obj, int pos);

int main()
{
    ifstream ifs("data/leetcode.json");
    Json::Reader reader;
    Json::Value obj;
    reader.parse(ifs, obj); // reader can also read strings

    TreeNode *root = new TreeNode;
    if (obj["data"].size() > 0)
    {
        createData(root, obj["data"], 1);
    }
    return 0;
}

void createData(TreeNode *root, Json::Value obj, int pos)
{
    int n = obj.size();
    root->val = obj[pos - 1].asInt();
    if (2 * pos > n || obj[2 * pos - 1].isNull())
    {
        root->left = NULL;
    }
    else
    {
        root->left = new TreeNode;
        createData(root->left, obj, 2 * pos);
    }

    if (2 * pos + 1 > n || obj[2 * pos].isNull())
    {
        root->right = NULL;
    }
    else
    {
        root->right = new TreeNode;
        createData(root->right, obj, 2 * pos + 1);
    }
}