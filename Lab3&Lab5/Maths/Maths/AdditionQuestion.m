//
//  AdditionQuestion.m
//  Maths
//
//  Created by Sean Chien on 2019-08-06.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "AdditionQuestion.h"
#import "InputHandler.h"

@implementation AdditionQuestion

- (instancetype)initWithController:(NSString *)operatprType
{
    self = [super init];
    if (self) {
        _number1 = arc4random_uniform(91) + 10;  // every one start to 10
        _number2 = arc4random_uniform(91) + 10;
        
        if ([operatprType isEqualToString:@"+"]) {
            _answer = _number1 + _number2;
        }else if ([operatprType isEqualToString:@"-"]) {
            _answer = _number1 - _number2;
        }else if ([operatprType isEqualToString:@"*"]) {
            _answer = _number1 * _number2;
        }else if ([operatprType isEqualToString:@"/"]) {
            _answer = _number1 / _number2;
        }
        _question = [NSString stringWithFormat: @"%ld + %ld ?", _number1, _number2];
        _userInput = getUserInput(_question);
    }
    return self;
}

+ (NSInteger) transformStringIntoInteger: (NSString *) aString {
    NSInteger lb;
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    NSNumber *num = [formatter numberFromString:aString];
    
    if (num == NULL) {
        NSLog(@"Error");
        lb = 0;
    }else {
        lb = num.integerValue;
    }
    return lb;
}

- (BOOL) isAnswer
{
    if (_answer == [AdditionQuestion transformStringIntoInteger:_userInput]) {
        NSLog(@"right!");
        return YES;
    }else {
        NSLog(@"wrong!");
        return NO;
    }
}

- (NSString *) userInput {
    _endTime = [NSDate date];
    return _userInput;
}
- (NSTimeInterval) timeToAnswer {
    return [_endTime timeIntervalSinceDate:_startTime];
}

@end
