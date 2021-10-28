#pragma once
#ifndef _READJSON_H_
#define _READJSON_H_

#include <iostream>
#include <fstream>
#include <string>
#include <json/json.h> // or jsoncpp/json.h , or json/json.h etc.
#include <json/forwards.h>
#include <json/reader.h>
#include "readJson.h"
using namespace std;

template <typename TreeNode>
void toTree(TreeNode *root, Json::Value obj, int pos)
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
        toTree(root->left, obj, 2 * pos);
    }

    if (2 * pos + 1 > n || obj[2 * pos].isNull())
    {
        root->right = NULL;
    }
    else
    {
        root->right = new TreeNode;
        toTree(root->right, obj, 2 * pos + 1);
    }
}

template <typename TreeNode>
bool jsonToTree(string jsonFilePath, TreeNode *root)
{
    ifstream ifs(jsonFilePath);
    Json::Reader reader;
    Json::Value obj;
    reader.parse(ifs, obj); // reader can also read strings

    if (obj["data"].size() > 0)
    {
        toTree(root, obj["data"], 1);
    }
    return true;
}

#endif