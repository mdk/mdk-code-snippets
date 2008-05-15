#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

typedef enum _PaintType {
	Silicon = 1, 
	Water = 2,
	Oil = 3
} PaintType;

@interface Paint : NSObject {
	PaintType _type;
}

- (Paint* ) initWithType: (PaintType) t;
- (PaintType) type;

@end
