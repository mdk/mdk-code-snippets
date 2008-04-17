#import "fraction.h"

@implementation Fraction 

-(void) print {
	printf ("%d / %d\n", numerator, denominator);
}

- (void) setDenominator: (int) d {
	denominator = d;	
}

- (void) setNumerator: (int) n {
	numerator = n;	
}

@end

