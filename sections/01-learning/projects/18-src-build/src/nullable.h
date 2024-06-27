#ifndef NULLABLE_H
#define NULLABLE_H

class Nullable
{
    public:
      Nullable(bool is_null=false);

    static Nullable Null; 

    bool isNull() const;

    private:
    bool m_is_null = true;        
};

#endif // NULLABLE_H
