#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSError.h>

@interface Bottle : NSObject {
	BOOL opened;
}

+ (Bottle*) closedBottle;
+ (Bottle*) openedBottle;
- (Bottle*) init;
- (void) print;
- (void) open: (NSError **) error;

@end
