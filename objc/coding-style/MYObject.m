#import "MYObject.h"

@implementation MYObject

+ (MYObject *)objectWithName:(NSString *) aName
{
	return [[[MYObject alloc] initWithName: aName] autorelease];
}

- (MYObject *)initWithName:(NSString *) aName
{
	self = [super init];

	if (self) {
		name = [aName retain];
	}

	return self;
}

- (BOOL)isSomething
{
	return YES;
}

- (void)doSomething:(NSString *) one 
	   withVeryLong:(NSString *) name
			andMany:(NSString *) two
		 parameters:(BOOL) flag
{
	NSLog(@"Doing something...");
}

- (NSString *) name
{
	return name;
}

- (void) setName:(NSString *) aName
{
	[name autorelease];
	name = [aName retain];
}

@end

