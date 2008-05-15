#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSThread.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSLock.h>

@interface Producer : NSObject {
	NSMutableArray *_queue;
	NSConditionLock *_cond;
	BOOL _done;
}

- (Producer*) init;
- (void) start;
- (NSString*) getObject;

@end
