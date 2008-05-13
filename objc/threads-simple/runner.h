#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSThread.h>

@interface Runner : NSObject {
	int _counter;
}

- (Runner*) init;
- (void) start;

@end
