#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "nsstring.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	NSString *test = [NSString stringWithString: @"michael"];
	test = [test bracketIt];

	NSLog (@"Output is: %@", test);
	
	[pool release];
	return 0;
}
