#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "MYObject.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	MYObject *obj = [MYObject objectWithName:@"My name"];

	NSLog (@"Is something: %d", [obj isSomething]);
	
	[obj doSomething:@"param 1"
	    withVeryLong:@"param 2"
			 andMany:@"param 3"
		  parameters:YES];

	[obj setName:@"Another name"];
	
	NSLog(@"My name is: %@", [obj name]);

	[pool release];
	return 0;
}
