#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if ([self count] == 0) {
        return nil;
    }
    
    for (int i = 0; i < [self count] - 1; i++) {
        if ([self[i] intValue] > [self[i + 1] intValue]) {
            return self[i + 1];
        }
    }
    
    return self[0];
}

@end
