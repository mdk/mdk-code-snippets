#import "paint.h"

@implementation Paint

- (PaintType) type 
{
	return _type;
}

- (Paint *) initWithType: (PaintType) t
{
	if (! [super init]) 
		return nil;

	_type = t;

	return self;
}

@end

