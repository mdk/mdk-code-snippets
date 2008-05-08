#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "coke-in-can.h"
#import "can.h"

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  id coke = [[[CokeInCan alloc] init] autorelease];

  [coke shake];
  [coke open];  
  
  [pool release];
  return 0;
}
