#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "bottle.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Bottle *b1 = [Bottle closedBottle]; 
	Bottle *b2 = [Bottle openedBottle]; 
	Bottle *b3 = [[Bottle alloc] init];

	NSLog (@"Present ourselves...");

	[b1 print];
	[b2 print];
	[b3 print];

	NSLog (@"Trying to open some...");
	NSError *error = nil;
	
	[b1 open: &error];
	if (error)
		NSLog ([error localizedDescription]);

	[b2 open: &error];
	if (error)
		NSLog ([error localizedDescription]);

	[b3 open: &error];
	if (error)
		NSLog ([error localizedDescription]);
	
	[b3 release];
	[pool release];
	return 0;
}
