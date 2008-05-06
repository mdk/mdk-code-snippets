#import "weapon.h"

@implementation Weapon

- (void) use 
{
  printf ("Override this!\n");
}

- (Weapon *) initWithPrice: (int) p
{
  self = [super init];

  if (self) {
    price = p;
  }

  return self;
}

- (int) price
{
  return price;
}

@end

