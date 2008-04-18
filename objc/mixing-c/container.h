#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#include "buffer.h"

@interface Container : NSObject
{
	void *buffer;
	NSString *name;
}

- (Container *) init: (NSString *) n;
- (void) dealloc;
- (void) present;

@end
