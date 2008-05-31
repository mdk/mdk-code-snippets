#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  // Boxing numbers as objects
  NSNumber *v1 = [NSNumber numberWithInt: 32];
  NSNumber *v2 = [NSNumber numberWithFloat: 32.32];
  NSNumber *v3 = [NSNumber numberWithChar: 'q'];

  NSArray *array = [NSArray arrayWithObjects: v1, v2, v3, nil];

  printf ("Listing various numbers...\n");
  int n = 1;
  id e = [array objectEnumerator];
  id obj;
  while ((obj = [e nextObject])) {
    printf ("%d: %s\n", n, [[obj description] UTF8String]);
    n++;
  }

  // Accessing the unboxed values
  printf ("Accessing boxed values...\n");
  printf ("1: %d\n", [v1 intValue]);
  printf ("2: %f\n", [v2 floatValue]);
  printf ("3: %d\n", [v3 charValue]);

  // Conversions
  printf ("Auto-converting values...\n");
  printf ("1: %f\n", [v1 floatValue]);
  printf ("2: %d\n", [v2 intValue]);
  printf ("3: %f\n", [v3 doubleValue]);

  [pool release];
  return 0;
}
