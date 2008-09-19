using System;

public class Container <T> {

    T item;

    public T Item { get { return item; }}

    /* Adds an item to the container */
    public void Add (T i)
    {
        item = i;
    }

}

public static class Test {

    public static int Main (string [] args)
    {
        Container <string> container = new Container <string> ();
        container.Add ("teddy");

        if (container.Item != "teddy")
            throw new Exception ();
        
        return 0;
    }

}
