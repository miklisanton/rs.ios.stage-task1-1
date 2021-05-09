#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *ranking = [NSMutableArray array];
    int length = [rankedArray count];
    if (length == 0) {
        for (int i = 0; i < [playerArray count]; i++) {
            [ranking addObject:[NSNumber numberWithInt:1]];
        }
        return ranking;
    }
    for (NSNumber *score in playerArray) {
        int i = 0;
        int decrease = 0;
        while ([score intValue] < [rankedArray[i] intValue]) {
            NSLog(@"%@", rankedArray[i]);
            i++;
            if (i >= length) {
                break;
            }
            if ([rankedArray[i] intValue] == [rankedArray[i - 1] intValue]) {
                decrease++;
            }
        }
        [ranking addObject:[NSNumber numberWithInt:i + 1 - decrease]];
    }
    return ranking;
}

@end
