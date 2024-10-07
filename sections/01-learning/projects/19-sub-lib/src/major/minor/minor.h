#ifndef MINOR_H
#define MINOR_H

class Minor
{
public:
  ~Minor() = default;

  virtual void run(const int indent);
};

#endif // MINOR_H
