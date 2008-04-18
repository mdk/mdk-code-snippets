#include <stdlib.h>
#include <stdio.h>
#include <Foundation/Foundation.h>
#include "container.h"

int main (void) 
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	printf ("Creating new object...\n");
	Container *c = [[Container alloc] init: @"TestBuffer"];

	[c present];

	printf ("Releasing object...\n");
	[c release];

	[pool release];
	return 0;
}
