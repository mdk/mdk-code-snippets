#include <QtCore>

class SampleClass {

public:
    QString name;

    void checkState()
    {
        qDebug() << "Name is empty:" << name.isEmpty();
        qDebug() << "Name is null:" << name.isNull();
    }
};

int main(int argc, char **argv)
{
    SampleClass cls;
    
    // When initialized QString is empty and "null"
    cls.checkState();

    // After set, the string is never no longer "null"
    cls.name = "";
    cls.checkState();
}
