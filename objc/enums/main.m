#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "paint.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Paint *p1 = [[[Paint alloc] initWithType: Silicon] autorelease];
	Paint *p2 = [[[Paint alloc] initWithType: Water] autorelease];
	Paint *p3 = [[[Paint alloc] initWithType: Oil] autorelease];

	NSLog (@"Paint 1 type: %d", [p1 type]);
	NSLog (@"Paint 2 type: %d", [p2 type]);
	NSLog (@"Paint 3 type: %d", [p3 type]);
	
	[pool release];
	return 0;
}
