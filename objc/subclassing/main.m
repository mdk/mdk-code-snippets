#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "weapon.h"
#import "gun.h"
#import "knife.h"

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  Weapon *w1 = [[[Gun alloc] init] autorelease];
  Weapon *w2 = [[[Weapon alloc] init] autorelease];
  Weapon *w3 = [Knife standardKnife];
  
  printf ("Gun price is: %d\n", [w1 price]);
  printf ("Gun says: ");
  [w1 use];
  
  printf ("Weapon price is: %d\n", [w2 price]);
  printf ("Weapon says: ");
  [w2 use];
  
  printf ("Knife price is: %d\n", [w3 price]);
  printf ("Knife says: ");
  [w3 use];
  
  [pool release];
  return 0;
}
