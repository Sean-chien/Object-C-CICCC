//
//  Lab2.h
//  Lab2
//
//  Created by Sean Chien on 2019-07-30.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Lab2 : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;
- (instancetype)initWithImput: (float) height andwidth: (float) width andlength: (float) length;
- (float) cubeMath;
- (int) compareSize: (Lab2*) otherBox;
@end

NS_ASSUME_NONNULL_END
