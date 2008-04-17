using System;
using Newtonsoft.Json;
using System.Collections;

public class Dog {

    public string Name;
    public int Age;
    public ArrayList Nicks;

    public Dog (string name, int age)
    {
        Name = name;
        Age = age;
        Nicks = new ArrayList ();
    }

    public void AddNick (string nick)
    {
        Nicks.Add (nick);
    }

}

public static class Test {

    public static int Main (string [] args)
    {
        Dog dog = new Dog ("Walt", 7);
        dog.AddNick ("Walty");
        dog.AddNick ("Waof");
        dog.AddNick ("Woffer");

        string json = JavaScriptConvert.SerializeObject (dog);
        Console.WriteLine (json);

        return 0;
    }

}



