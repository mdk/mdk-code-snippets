#import <Foundation/Foundation.h>
#import "runner.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Runner *runner = [[[Runner alloc] init] autorelease];
	[runner start];	

	usleep (10000);

	[pool release];
	return 0;
}
