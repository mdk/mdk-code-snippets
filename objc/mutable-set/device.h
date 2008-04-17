#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@interface Device : NSObject {
	NSString *name;
}

- (Device* ) initWithName: (NSString *) name;
- (void) print;
- (void) dealloc;

@end
