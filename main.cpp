//...difficulty:Medium
//...leetcode_22_2021-10-27
//...https://leetcode-cn.com/problems/
#include <iostream>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <string>
#include "readJson.h"
#include <cmath>

using namespace std;

class Solution
{
public:
    void test()
    {
        cout << "test";
    }
};

struct TreeNode
{
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

void dfs(TreeNode *root)
{
    if (root == NULL)
    {
        return;
    }
    cout << root->val << endl;
    dfs(root->left);
    dfs(root->right);
}

int main(int argc, char *argv[])
{
    // TreeNode *head;
    // readJson<TreeNode> test;
    // head = test.jsonToTree("data/leetcode.json");
    // dfs(head);
    getleetcode(argv[1]);
    return 0;
}
