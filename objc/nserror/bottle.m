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

+ (Bottle*) closedBottle
{
	return [[[[self class] alloc] init] autorelease];
}

+ (Bottle*) openedBottle
{
	id bottle = [[[self class] alloc ] init];
	[bottle open: nil];
	return [bottle autorelease];
}

- (Bottle*) init
{
	if (! [super init])
		return nil;

	opened = NO;

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
		*error = nil;

	opened = YES;
}

@end

