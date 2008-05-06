#import "weapon.h"

@interface Knife : Weapon {}

- (Knife*) init;
- (void) use;

+ (Knife*) standardKnife;

@end
