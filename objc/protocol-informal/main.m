#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import "coke-machine.h"
#import "candy-machine.h"
#import "coke-machine-dispenser.h"
#import "candy-machine-dispenser.h"
#import "exploiter.h"

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  Exploiter *exploiter = [[[Exploiter alloc] init] autorelease];
  CokeMachine *machine1 = [[[CokeMachine alloc]  init] autorelease];
  CandyMachine *machine2 = [[[CandyMachine alloc] init] autorelease];

  printf ("Exploiting manually...\n");
  [machine1 dispenseCoke];
  [machine2 dispenseCandy];

  printf ("Exploiting via exploiter...\n");
  [exploiter useDispenser: machine1];
  [exploiter useDispenser: machine2];
  
  [pool release];
  return 0;
}
