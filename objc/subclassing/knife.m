#import "knife.h"

@implementation Knife

- (void) use 
{
  printf ("STAB STAB!\n");
}

- (Knife *) init
{
  if (! [super initWithPrice: 10])
    return nil;

  return self;
}

+ (Knife *) standardKnife
{
  id instance = [[[self class] alloc] init];
  return [instance autorelease];
}

@end

