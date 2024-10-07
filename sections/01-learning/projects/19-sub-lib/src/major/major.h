#ifndef MAJOR_H
#define MAJOR_H
#include "minor.h"

class Major : public Minor
{
public:
  ~Major() = default;
  virtual void run(const int indent);
};

#endif // MAJOR_H
