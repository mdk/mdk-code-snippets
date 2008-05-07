#import "ball.h"

@implementation Ball

-(void) print 
{
	printf ("%s ball made of %s\n", [color UTF8String], [material UTF8String]);
}

- (Ball *) initWithColor: (NSString *) c andMaterial: (NSString *) m 
{
	if (! [super init]) 
		return nil;
	
	color = [[NSString alloc] initWithString: c];
	material = [[NSString alloc] initWithString: m];

	return self;
}

- (Ball *) initWithColor: (NSString *) c
{
	return [self initWithColor: c andMaterial: @"plastic"];
}

- (void) dealloc 
{
	[color release];
	[material release];
	[super dealloc];
}

@end

