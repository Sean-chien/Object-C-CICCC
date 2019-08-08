//
//  AdditionQuestion.h
//  Maths
//
//  Created by Sean Chien on 2019-08-06.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSInteger number1;
@property (nonatomic) NSInteger number2;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSString *userInput;
@property (nonatomic, strong) NSDate *startTime;   // NSDate, NSDateForatter -> ios 日期操作
@property (nonatomic, strong) NSDate *endTime;

- (instancetype) initWithController: (NSString *) operatprType;
- (BOOL) isAnswer;
- (NSTimeInterval) timeToAnswer;  // NSTimeInterval -> 时间對比判断 昨天、今天
- (void) generateQuestion;



@end


