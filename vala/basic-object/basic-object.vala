using GLib;

public class BasicObject : Object 
{
    public static int main (string[] args) 
    {
        Knife kf = new Knife();
        kf.use();
        stdout.printf("Knife price: %d\n", kf.price);
        return 0;
    }
}

