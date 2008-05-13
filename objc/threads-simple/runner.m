#import "runner.h"

@implementation Runner

- (Runner*) init
{
	if (! [super init])
		return nil;

	_counter = 50;

	return self;
}

- (void) threadStartFunc: (id) param
{
	while (_counter > 0) {
		printf ("RUNNER: %d\n", _counter);
		_counter--;
	}
}

- (void) start
{
	[NSThread detachNewThreadSelector:@selector(threadStartFunc:) toTarget:self withObject:nil];
}

@end

