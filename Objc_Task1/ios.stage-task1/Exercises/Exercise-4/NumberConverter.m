#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSMutableArray *output = [NSMutableArray array];
    if(number == nil){
        return output;
    }
    int value = abs([number intValue]);
    while (value) {
        [output addObject:[NSString stringWithFormat:@"%d", value%10]];
        value /= 10;
    }
    return output;
}

@end
