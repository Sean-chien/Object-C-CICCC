//
//  ScoreKeeper.h
//  Maths
//
//  Created by Sean Chien on 2019-08-06.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger rightCount;
@property (nonatomic) NSInteger wrongCount;

- (void) Scoreanswer;
@end

