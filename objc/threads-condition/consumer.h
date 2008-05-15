#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSThread.h>
#import "producer.h"

@interface Consumer : NSObject {
	Producer *_producer;
}

- (Consumer*) initWithProducer: (Producer *) prod;
- (void) start;

@end
