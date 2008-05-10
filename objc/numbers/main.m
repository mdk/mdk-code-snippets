#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSNumber *v1 = [NSNumber numberWithInt: 32];
  NSNumber *v2 = [NSNumber numberWithFloat: 32.32];
  NSNumber *v3 = [NSNumber numberWithChar: 'q'];

  NSArray *array = [NSArray arrayWithObjects: v1, v2, v3, nil];

  int n = 1;
  id e = [array objectEnumerator];
  id obj;
  while ((obj = [e nextObject])) {
    printf ("%d: %s\n", n, [[obj description] UTF8String]);
    n++;
  }

  [pool release];
  return 0;
}
