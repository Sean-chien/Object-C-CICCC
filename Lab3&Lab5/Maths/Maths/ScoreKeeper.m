//
//  ScoreKeeper.m
//  Maths
//
//  Created by Sean Chien on 2019-08-06.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightCount = 0;
        _wrongCount = 0;
    }
    return self;
}
- (NSInteger) percentage {
    return (_rightCount)/ (_rightCount + _wrongCount) * 100;
}

- (void) Scoreanswer {
    NSLog(@"score: %ld right, %ld wrong ---- %ld%%", (long)_rightCount, (long)_wrongCount, (long)[self percentage]);
}

@end
