#import "fraction.h"

int main (int argc, const char *argv[])
{
	Fraction *frac = [[Fraction alloc] init];
	[frac setNumerator: 1];
	[frac setDenominator: 2];
	[frac print];

	[frac release];
	return 0;
}
