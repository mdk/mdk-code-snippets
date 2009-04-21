using GLib;

public class HelloWorld : Object {

    public void present () 
    {
        stdout.printf ("Hello World\n");
    }

    public static int main (string[] args) 
    {
        var hello = new HelloWorld ();
        hello.present ();
        return 0;
    }
}

