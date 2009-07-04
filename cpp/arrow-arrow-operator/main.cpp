#include <stdio.h>

class Debug
{
public:
    inline Debug(const char *v);
    inline void operator<<(const char *v);
    inline ~Debug();
};

inline Debug::Debug(const char *v)
{
    printf("%s:", v);
}

inline Debug::~Debug()
{
    printf("\n");
}

inline void Debug::operator<<(const char *v)
{
    printf("%s", v);
}

int main(int argc, char **)
{
    Debug(__PRETTY_FUNCTION__) << "This is a test!";
}
