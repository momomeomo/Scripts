#include <iostream>
#include <cstdlib>
using namespace std;

#include "Menu.h"

void func1();
void func2();
void func3();
void Exit();

int main() {
    Menu m;
    m.addMenu("1. Function 1", func1);
    m.addMenu("2. Function 2", func2);
    m.addMenu("3. Function 3", func3);
    m.addMenu("4. Function Exit", Exit);

    m.runMenu();
}

void func1() {
    char c;
    cout << "You've entered function 1" << endl;
    cin >> c;
}

void func2() {
    char c;
    cout << "You've entered function 2" << endl;
    cin >> c;
}

void func3() {
    char c;
    cout << "You've entered function 3" << endl;
    cin >> c;
}

void Exit() {
    cout << "Exiting" << endl;
    exit(0);
}