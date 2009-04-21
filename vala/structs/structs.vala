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

        stdout.printf("Original: " + ts.c + "\n");
        hello.prop = ts;

        ts.c = "I was changed!";
        stdout.printf("After change: " + ts.c + "\n");
        stdout.printf("On object: " + hello.prop.c + "\n");

        return 0;
    }
}

