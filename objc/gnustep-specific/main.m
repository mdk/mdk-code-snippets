#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, const char *argv[])
{

#ifdef GNUSTEP_BASE_LIBRARY
    NSLog(@"I'm running GNUStep!");
#endif

    NSLog(@"Hello world!");
    return 0;
}
