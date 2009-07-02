using GLib;

public class Model : Object {

    public signal void example_signal(int no);
    
    public void emit()
    {
        example_signal(666);
    }

}

public class Signals : Object {

    static void on_example_signal(int n)
    {
        stdout.printf("Number:%d\n", n);
    }


    public static int main (string[] args) 
    {
        var m1 = new Model();
        m1.example_signal += on_example_signal;
        m1.emit();
        return 0;
    }
}

