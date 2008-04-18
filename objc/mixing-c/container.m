#import "container.h"

@implementation Container

- (Container *) init: (NSString *) n
{
	self = [super init];

	if (self) {
		name = [[NSString alloc] initWithString: n];
		buffer = alloc_buffer (100);
	}

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
