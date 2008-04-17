#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@interface Ball : NSObject {
	NSString *color;
	NSString *material;
}

- (Ball* ) initWithColor: (NSString *) color andMaterial: (NSString *) material;
- (Ball* ) initWithColor: (NSString *) color;
- (void) print;
- (void) dealloc;

@end
