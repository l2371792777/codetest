//...leetcode_437_2021-09-28
//...https://leetcode-cn.com/problems/path-sum-iii/
#include <iostream>
#include <vector>
#include <algorithm>
#include <limits.h>

using namespace std;

// Definition for a binary tree node.
struct TreeNode
{
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

int pathSum(TreeNode *root, int targetSum);

void test();

int main()
{
    test();
    return 0;
}

void test()
{
}

int pathSum(TreeNode *root, int targetSum)
{
}