#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "ball.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Ball *b1 = [[[Ball alloc] initWithColor: @"red" andMaterial: @"wood"] autorelease];
	Ball *b2 = [[[Ball alloc] initWithColor: @"yellow"] autorelease];
	
	[b1 print];
	[b2 print];
	
	[pool release];
	return 0;
}
