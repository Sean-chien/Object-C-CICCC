//
//  GameController.h
//  ThreeLow
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

-(void)holdDie:(NSInteger)input;
-(void)reset;
-(void)score;
-(void)resetLowestScore;
-(void)Ending;
@property NSNumber *lowestScore;
@property NSNumber *numberOfRoll;
@property NSMutableArray <Dice *> *setOfDice;
@property NSMutableArray *holdRoll;

@end


