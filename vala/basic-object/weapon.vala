using GLib;

public abstract class Weapon : Object
{
    public abstract int price { get; }

    public abstract void use();
}
