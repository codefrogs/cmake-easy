#include "major.h"
#include "minor.h"

#include <iostream>
using namespace std;

void Major::run([[maybe_unused]] const int indent)
{
  cout << "Major: run() CALLED" << endl;

  cout << "Major: calling Minor::run()" << endl;
  Minor minor;
  minor.run(4);

  cout << "Major: run() FINISHED" << endl;
}
