#include <iostream>
#include <queue>
#include <stack>
#include <string>

using namespace std;

int main() {
    queue<string> fronta;
    stack<string> zasobnik;

    string input = "";

    while(input != "end") {
        cin >> input;
        if (input == "end") break;
        fronta.push(input);
        zasobnik.push(input);
    }

    while(! fronta.empty()) {
        cout << fronta.front() << " ";
        fronta.pop();
    }
    cout << endl;

    while(! zasobnik.empty()) {
        cout << zasobnik.top() << " ";
        zasobnik.pop();
    }
    cout << endl;
}
