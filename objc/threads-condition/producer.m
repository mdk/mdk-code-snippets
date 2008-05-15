#import "producer.h"

@implementation Producer

- (Producer*) init
{
	if (! [super init])
		return nil;

	_queue = [[NSMutableArray alloc] initWithCapacity: 10];
	_cond = [[NSConditionLock alloc] initWithCondition: 0];
	_done = NO;

	return self;
}

- (void) threadStartFunc: (id) param
{
	int i;
	for (i = 0; i < 10; i++) {
		[_cond lock];

		NSString *obj = [[NSString alloc] initWithFormat: @"Object #%d", i];
		[_queue insertObject: obj atIndex: 0]; 

		[_cond unlockWithCondition: 1];
	}

	[_cond lock];
	_done = YES;
	[_cond unlockWithCondition: 1];
}

- (void) start
{
	[NSThread detachNewThreadSelector:@selector(threadStartFunc:) toTarget:self withObject:nil];
}

- (NSString*) getObject
{
	[_cond lockWhenCondition: 1];
	
	NSString *obj;
	int condition;

	if ([_queue count] > 0) {
		obj = [_queue lastObject];
		[_queue removeLastObject];
	} else {
		obj = nil;
	}

	if ([_queue count] > 0 || _done) 
		condition = 1;
	else
		condition = 0;

	[_cond unlockWithCondition: condition];

	return obj;
}

@end

