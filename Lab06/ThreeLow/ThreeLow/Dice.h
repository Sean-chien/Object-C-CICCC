//
//  Dice.h
//  ThreeLow
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

-(NSNumber*)randomize;

@property NSNumber *currentNumber;
@end

