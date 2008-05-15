#import "consumer.h"

@implementation Consumer

- (Consumer*) initWithProducer: (Producer*) prod
{
	if (! [super init])
		return nil;

	_producer = prod;

	return self;
}

- (void) threadStartFunc: (id) param
{
	NSString *obj;
	while ((obj = [_producer getObject]) != nil) {
		NSLog (@"Consuming %@...", obj);
		[obj release];
	}

	NSLog (@"Nothing more to consume!");
}

- (void) start
{
	[NSThread detachNewThreadSelector:@selector(threadStartFunc:) toTarget:self withObject:nil];
}

@end

