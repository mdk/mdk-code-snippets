#import "nsstring.h"

@implementation NSString (StringFu)

- (NSString *) bracketIt 
{
	NSString *bracket = @"___";
	return [bracket stringByAppendingString: [self stringByAppendingString: bracket]];
}

@end

