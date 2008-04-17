#import <Foundation/NSObject.h>

@interface Fraction : NSObject {
	int numerator;
	int denominator;
}

- (void) print;
- (void) setDenominator: (int) d;
- (void) setNumerator: (int) n;

@end
