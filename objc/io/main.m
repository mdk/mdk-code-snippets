#import <Foundation/NSString.h>
#import <Foundation/NSFileHandle.h>
#import <Foundation/NSData.h>
#import <Foundation/NSAutoreleasePool.h>

int main (int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSMutableData *data = [NSMutableData dataWithCapacity: 0];
 
  char buffer [256 * 4];
  int x, y;
  
  for (y = 0; y < 256; y++) {
    for (x = 0; x < 256; x++) {
      buffer [(x * 4) + 0] = x;
      buffer [(x * 4) + 1] = x;
      buffer [(x * 4) + 2] = x;
      buffer [(x * 4) + 3] = 255;
    }
  
    [data appendBytes: buffer length: 256 * 4];
  }

  // Using handles...
  NSFileHandle *handle = [NSFileHandle fileHandleForWritingAtPath: @"output_1.raw"];
  [handle writeData: data];

  // Using NSData...
  [data writeToFile: @"output_2.raw" atomically: NO];

  [pool release];
  return 0;
}
