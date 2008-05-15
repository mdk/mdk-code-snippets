#import <Foundation/Foundation.h>
#import "producer.h"
#import "consumer.h"

int main (int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Producer *producer = [[[Producer alloc] init] autorelease];
	Consumer *consumer = [[[Consumer alloc] initWithProducer: producer] autorelease];

	[consumer start];
	[producer start];

	usleep (100000);

	[pool release];
	return 0;
}
