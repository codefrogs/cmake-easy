#include "nullable.h"

Nullable Nullable::Null(true);

Nullable::Nullable(bool is_null): m_is_null(is_null){}

bool Nullable::isNull() const { return m_is_null; }
