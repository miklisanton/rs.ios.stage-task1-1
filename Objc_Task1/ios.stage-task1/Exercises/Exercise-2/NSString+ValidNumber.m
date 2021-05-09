#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if ([self length] == 0) {
        return 0;
    }
    for (int i = 0; i < [self length]; i++) {
        NSString *element = [self substringWithRange:NSMakeRange(i, 1)];
        NSLog(@"%@", element);
        if (![element integerValue] && ![element isEqual:@"0"]) {
            return 0;
        }
    }
    return 1;
}

@end
