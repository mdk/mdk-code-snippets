#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSSet.h>
#import "device.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	NSMutableSet *set = [[NSMutableSet alloc] init];

	[set addObject: [[[Device alloc] initWithName: @"Magic wand"] autorelease]];
	[set addObject: [[[Device alloc] initWithName: @"Hat"] autorelease]];
	[set addObject: [[[Device alloc] initWithName: @"Sword of doom"] autorelease]];

	id e = [set objectEnumerator];
	Device *obj;
	while (obj = [e nextObject]) {
		[obj print];
	}

	[set release];
	[pool release];
	return 0;
}
