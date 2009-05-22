// To hell with c++/Qt's implicit conversion operators...

#include <stdio.h>
#include <QString>

class TestClass 
{
public:
    TestClass();
    QString string1();
    const QString string2();
    QString string3();
    const QString string4();
    const QString& string5();
    
private:
    QString name;
};

TestClass::TestClass() : name("Hello world")
{
}

QString TestClass::string1()
{
    QString str("Hello World!");
    printf("string1 in func  : %p\n", (void *) &str);
    return str;
}

const QString TestClass::string2()
{
    QString str("Hello World!");
    printf("string2 in func  : %p\n", (void *) &str);
    return str;
}

QString TestClass::string3()
{
    printf("string3 in func  : %p\n", (void *) &name);
    return name;
}

const QString TestClass::string4()
{
    printf("string4 in func  : %p\n", (void *) &name);
    return name;
}

const QString& TestClass::string5()
{
    printf("string5 in func  : %p\n", (void *) &name);
    return name;
}

int main(int argc, char **argv)
{
    TestClass test;
    
    QString str1 = test.string1();
    printf ("string1 returned : %p\n", (void *) &str1); 
    str1.truncate(5);
    printf("\n");

    QString str2 = test.string2();
    printf ("string2 returned : %p\n", (void *) &str2); 
    str2.truncate(5);
    printf("\n");

    const QString str2c = test.string2();
    printf ("string2c returned: %p\n", (void *) &str2c); 
    // str2c.truncate(5); -- this is not okay, const
    printf("\n");

    QString str3 = test.string3();
    printf ("string3 returned : %p\n", (void *) &str3); 
    str3.truncate(5);
    printf("\n");
    
    QString str4 = test.string4();
    printf ("string4 returned : %p\n", (void *) &str4); 
    str4.truncate(5);
    printf("\n");

    const QString& str5 = test.string5();
    printf ("string5 returned : %p\n", (void *) &str5); 
    //str5.truncate(5); -- this is not okay, const
    printf("\n");
}