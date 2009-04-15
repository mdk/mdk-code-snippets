#import <Foundation/Foundation.h>

// NOTE: This doesn't work on the GNUStep runtime

void do_something(void)
{
    // Just throw an exception
    NSException *exception = [[NSException alloc] initWithName:@"Sample exception" reason:@"Testing" userInfo:nil];
    @throw exception;
}

int main(void)
{
    @try 
    {
        do_something();
    }
    @catch (NSException *excp)
    {
        NSLog(@"Exception catched! Reason: %@", [excp reason]);
    }
    @finally
    {
        NSLog(@"Finally doing...");
    }

	return 0;
}
