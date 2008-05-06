#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@interface Weapon : NSObject {
  int price;
}

- (Weapon*) initWithPrice: (int) price;
- (void) use;
- (int) price;

@end
