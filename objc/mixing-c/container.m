#import "container.h"

@implementation Container

- (Container *) init: (NSString *) n
{
	if (! [super init]) 
		return nil;
	
	name = [[NSString alloc] initWithString: n];
	buffer = alloc_buffer (100);

	return self;
}

- (void) dealloc
{
	[name release];
	free_buffer (buffer);
	[super dealloc];
}

- (void) present 
{
	printf ("My name is %s\n", [name UTF8String]);
}

@end
