//cmake-easy
#include <iostream>
#include "nullable.h"

using std::cout;
using std::endl;

int main()
{
  constexpr int SUCCESS{0};

  Nullable myclass;
 
  cout << "Testing nullness of default instance of Nullable" << endl;

  if (myclass.isNull())
  { 
      cout << "Class is null" << endl;
  }
  else
  {
      cout << "Class is NOT null" << endl;
  }
  cout << "Done." << endl;
  return SUCCESS;
}
