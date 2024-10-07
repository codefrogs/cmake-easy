#include "minor.h"
#include <iostream>
#include <string>

using namespace std;

void Minor::run(const int indent)
{
  string space(indent, ' ');
  cout << space << "Minor: run() CALLED" << endl;
  cout << space << "Minor: run() FINISHED" << endl;
}
