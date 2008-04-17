#import "bottle.h"
#import <Foundation/NSDictionary.h>

@implementation Bottle

-(void) print 
{
	if (opened)
		printf ("Bottle is opened\n");
	else
		printf ("Bottle is closed\n");
}

+ (id) closedBottle
{
	return [[[Bottle alloc] init] autorelease];
}

+ (id) openedBottle
{
	id bottle = [[[Bottle alloc] init] autorelease];
	[bottle open: nil];
	return bottle;
}

- (id) init
{
	self = [super init];

	if (self) {
		opened = NO;
	}

	return self;
}

- (void) open: (NSError **) error
{
	if (opened == YES) {
		if (error) {
			NSMutableDictionary *errorDetail = [NSMutableDictionary dictionary];
			[errorDetail setValue: @"Bottle already opened" forKey: NSLocalizedDescriptionKey];
			*error = [NSError errorWithDomain: @"Bottle example" code: 100 userInfo: errorDetail];
			return;
		} else
			return;
	}
	
	if (error)
		error = nil;

	opened = YES;
}

@end

