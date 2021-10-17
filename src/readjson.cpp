//please run
//> g++ -o jsontest src/main.cpp -ljsoncpp
#include <iostream>
#include <fstream>
#include <json/json.h> // or jsoncpp/json.h , or json/json.h etc.
#include <json/forwards.h>
#include <json/reader.h>

using namespace std;

int main()
{
    ifstream ifs("data/test.json");
    Json::Reader reader;
    Json::Value obj;
    reader.parse(ifs, obj); // reader can also read strings
    cout << "Book: " << obj["book"].asString() << endl;
    cout << "Year: " << obj["year"].asString() << endl;
    const Json::Value &characters = obj["characters"]; // array of characters
    for (int i = 0; i < characters.size(); i++)
    {
        cout << "    name: " << characters[i]["name"].asString();
        cout << " chapter: " << characters[i]["chapter"].asUInt();
        cout << endl;
    }
    return 0;
}