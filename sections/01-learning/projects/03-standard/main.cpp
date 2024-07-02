#include <iostream>
using std::endl;
using std::cout;

// Example uses the C++20 space-ship operator. 
//
int main()
{
  int level_previous{3};
  int level_current{2};

  auto level_change = level_current <=> level_previous;
  cout << "C+20 three-way operator example" << endl;
  cout << "-------------------------------\n\n";

  if ( level_change < 0 )     cout << "Level reducing" << endl;
  else if (level_change > 0 ) cout << "Level increasing" << endl;
  else cout << "Level stable." << endl;

  return 0;
}


