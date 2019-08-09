//
//  GameController.m
//  ThreeLow
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "GameController.h"

@implementation GameController
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _numberOfRoll = @(0);
        _lowestScore = @(100);
        _setOfDice = [NSMutableArray new];
        _holdRoll= [NSMutableArray new];
        Dice *dice1 = [Dice new];
        [_setOfDice addObject:dice1];
        Dice *dice2 = [Dice new];
        [_setOfDice addObject:dice2];
        Dice *dice3 = [Dice new];
        [_setOfDice addObject:dice3];
        Dice *dice4 = [Dice new];
        [_setOfDice addObject:dice4];
        Dice *dice5 = [Dice new];
        [_setOfDice addObject:dice5];
    }
    return self;
}
- (void) reset
{
    _holdRoll = [NSMutableArray new];
    _numberOfRoll =@(0);
    NSLog(@"Already reset");
}

- (void) holdDie:(NSInteger)input
{
    [_holdRoll addObject:_setOfDice[input - 1]];
}


- (void) score
{
    int sum = 0;
    for (int i=0;i < _setOfDice.count;i++)
    {
        sum += _setOfDice[i].currentNumber.integerValue;
    }
    if (sum < [_lowestScore intValue])
    {
        _lowestScore = @(sum);
    }
    NSLog(@"\n Your total score is %i", sum);
}

- (void) resetLowestScore
{
    _lowestScore = @(100);
}
- (void) Ending
{
    NSLog(@"\n +=+ Bye +=+");
}
@end

