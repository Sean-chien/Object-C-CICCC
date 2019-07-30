//
//  Lab2.m
//  Lab2
//
//  Created by Sean Chien on 2019-07-30.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "Lab2.h"

@implementation Lab2

- (instancetype)initWithImput: (float) height andwidth: (float) width andlength: (float) length
{
    if ((self = [super init])){
        self.height = height;
        self.width = width;
        self.length = length;
    }
    return self;
}

- (float) cubeMath {
    return self.height * self.width * self.length;
}

- (int) compareSize: (Lab2*) otherBox {
    return self.cubeMath / otherBox.cubeMath;
}

@end
