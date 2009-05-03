using GLib;

struct TestStruct {
    public int a;
    public int b;
    public string c;
}

public class Hello : Object 
{
    TestStruct prop { get; set; }

    public static int main (string[] args) 
    {
        Hello hello = new Hello();
        TestStruct ts = TestStruct();
        ts.a = 10;
        ts.b = 20;
        ts.c = "Hello World!";

        stdout.printf("Original: %s\n", ts.c);
        hello.prop = ts;

        ts.c = "I was changed!";
        stdout.printf("After change: %s\n", ts.c);
        stdout.printf("On object: %s\n", hello.prop.c);

        return 0;
    }
}

