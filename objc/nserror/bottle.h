#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSError.h>

@interface Bottle : NSObject {
	BOOL opened;
}

+ (id) closedBottle;
+ (id) openedBottle;
- (id) init;
- (void) print;
- (void) open: (NSError **) error;

@end
