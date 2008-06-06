#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@interface MYObject : NSObject {
	NSString *name;
}

+ (MYObject *)objectWithName:(NSString *) aName;

- (MYObject *)initWithName:(NSString *) aName;
- (BOOL)isSomething;
- (void)doSomething:(NSString *) one 
	   withVeryLong:(NSString *) name
			andMany:(NSString *) two
		 parameters:(BOOL) flag;

- (NSString *) name;
- (void) setName:(NSString *) aName;

@end
