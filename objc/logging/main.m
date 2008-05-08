#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "sample-object.h"

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSString *str = @"Static string";
  id mySampleObject = [[[SampleObject alloc] initWithNumber: 666] autorelease];

  NSLog (@"Here is logging");
  NSLog (@"Here is static logging: %@", str);
  NSLog (@"Here is object description: %@", mySampleObject);
 
  [pool release];
  return 0;
}
