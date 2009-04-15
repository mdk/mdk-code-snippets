#import <Foundation/Foundation.h>

int main(void)
{
    NSLog(@"NSInteger: %d", sizeof(NSInteger));
    NSLog(@"Int:       %d", sizeof(int));
    NSLog(@"Long:      %d", sizeof(long));
    NSLog(@"Long long: %d", sizeof(long long));
    NSLog(@"Float:     %d", sizeof(float));
    NSLog(@"Double:    %d", sizeof(double));
}
