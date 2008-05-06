#import "gun.h"

@implementation Gun

- (void) use 
{
  printf ("PIF PAF!\n");
}

- (Gun *) init
{
  if (! [super initWithPrice: 32])
    return nil;

  return self;
}

@end

