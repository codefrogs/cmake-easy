#include "major.h"
#include "minor.h"

#include <iostream>

using namespace std;

int main()
{
  Major *major = new Major;
  major->run(0);
  delete major;

  cout << "Main(): Calling Minor::run()" << endl;
  Minor minor;
  minor.run(0);

  return 0;
}
