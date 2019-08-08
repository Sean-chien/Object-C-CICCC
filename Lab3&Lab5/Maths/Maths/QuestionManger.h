//
//  QuestionManger.h
//  Maths
//
//  Created by Sean Chien on 2019-08-07.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"


@interface QuestionManger : NSObject

@property (nonatomic) AdditionQuestion *question;
- (instancetype) init;

@end

