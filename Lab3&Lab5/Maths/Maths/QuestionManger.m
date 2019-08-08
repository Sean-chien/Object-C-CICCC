//
//  QuestionManger.m
//  Maths
//
//  Created by Sean Chien on 2019-08-07.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "QuestionManger.h"

@implementation QuestionManger

NSArray *questionArray;


- (NSString *) randomOperator {
    return questionArray[arc4random_uniform(4)];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        questionArray = [NSArray arrayWithObjects:@"+", @"-", @"*", @"/", nil];
        _question = [[AdditionQuestion alloc] initWithController:[self randomOperator]];
    }
    return self;
}


@end
