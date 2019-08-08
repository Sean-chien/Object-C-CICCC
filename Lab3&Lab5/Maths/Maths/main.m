//
//  main.m
//  Maths
//
//  Created by Sean Chien on 2019-08-06.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        BOOL gameOn = YES;
        
        while (gameOn) {
            AdditionQuestion *additionQuestion = [additionQuestion question];
            if ([[additionQuestion userInput] isEqualToString:@"quit" ]) {
                break;
            } else {
                if ([additionQuestion isAnswer]) {
                    [scoreKeeper setRightCount:[scoreKeeper rightCount] + 1];
                } else {
                    [scoreKeeper setWrongCount:[scoreKeeper wrongCount] + 1];
                }
                [scoreKeeper Scoreanswer];
            }
        }
    }
    return 0;
}
