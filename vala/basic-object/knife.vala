using GLib;

public class Knife : Weapon
{
    public override int price { 
        get { return 10; }
    }

    public override void use()
    {
        stdout.printf("Dag dag!\n");
    }
}
