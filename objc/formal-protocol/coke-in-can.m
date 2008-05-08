#import "coke-in-can.h"

@implementation CokeInCan

- (void) open
{
  if (! shaken)
    printf ("Coke opened!\n");
  else
    printf ("Coke opened and explodes all around the room!\n");
}

- (void) shake
{
  printf ("Coke shaked! Beware!\n");
  shaken = YES;
}

- (CokeInCan*) init
{
  if (! [super init])
    return nil;
    
  shaken = NO;
  return self;
}

@end

