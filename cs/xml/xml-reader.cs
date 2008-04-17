using System;
using System.IO;
using System.Xml;

public static class XmlReader {

    public static int Main (string [] args)
    {
        try {
            using (StreamReader streamReader = File.OpenText ("sample.xml")) {
                XmlDocument document = new XmlDocument ();
                document.Load (streamReader);
                
                Console.WriteLine ("Articles:\n");

                foreach (XmlNode node in document.GetElementsByTagName ("entry")) {
                    Console.WriteLine ("* {0}", node ["title"].InnerText);
                }
            }
        
        } catch {
            Console.WriteLine ("Failed to open/process the xml!");
        }

        return 0;
    }

}
