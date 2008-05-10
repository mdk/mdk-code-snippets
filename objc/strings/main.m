#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  // Creating a static string
  NSString *str1 = @"Static string";

  // Creating a dynamic string
  NSString *str2 = [NSString stringWithString: @"Dynamic from static"];

  // Creating a string from UTF8 string using convienience constructor
  NSString *str3 = [NSString stringWithUTF8String: "This is a UTF8 string"];

  // Creating a string from UTF8 string using std alloc
  NSString *str4 = [[NSString alloc] initWithUTF8String: "Another UTF8 string"];

  NSLog (@"str1: %@ str2: %@ str3: %@ str4: %@", str1, str2, str3, str4);

  // Doing double from string
  NSString *doubleString = @"3.14";
  NSLog (@"A value of '%@' is %f", doubleString, [doubleString doubleValue]);

  // Doing integer from string
  NSString *integerString = @"666";
  NSLog (@"A value of '%@' is %d", integerString, [integerString intValue]);

  // Doing a bool from string
  NSString *boolString = @"1";
  NSLog (@"A value of '%@' is %d", boolString, [boolString boolValue]);

  // Replacing string
  NSString *myText = [NSString stringWithUTF8String: "A quick brown fox jumped over fox"];
  NSString *myFinalText = [myText stringByReplacingString: @"fox" withString: @"dog"];
  NSLog (@"Replacement: %@", myFinalText);

  // Mutable string
  NSMutableString *mutant = [NSMutableString string];
  int i;
  for (i = 0; i < 10; i++) 
	  [mutant appendString: @"dog "];
  NSLog (@"Mutant is: %@", mutant);

  // Formatting a bit...
  NSString *uglyString = @" This is a      ";
  NSString *fixedString = [NSString stringWithString: [uglyString stringByTrimmingSpaces]];
  NSLog (@"Fixed string is: '%@'", fixedString);

  [str4 release];
  [pool release];
  return 0;
}
