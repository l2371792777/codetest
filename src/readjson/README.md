## json转c++数据结构

### use

加载libreadjson.so  
将readJson.h放入项目目录  
include"readJson.h"  

### example
./example  
├── CMakeLists.txt  
├── include    
│   └── readJson.h  
├── lib  
│   └── libreadjson.so  
├── main.cpp  
└── test.json  

test.json
```
{
    "data":[3,1,4,null,2]
}
```
main.cpp
```
#include <iostream>
#include "readJson.h"

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

int main()
{
    TreeNode *head;
    readJson<TreeNode> test;
    head = test.jsonToTree("test.json");
    dfs(head);
    return 0;
}

```
