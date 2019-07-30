//
//  main.m
//  Lab2
//
//  Created by Sean Chien on 2019-07-30.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lab2.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"The cube height: ");
        float height = 0.0;
        scanf("%2f", &height);
        
        NSLog(@"The cube width: ");
        float width = 0.0;
        scanf("%2f", &width);
        
        NSLog(@"The cube length: ");
        float length = 0.0;
        scanf("%2f", &length);
        
        NSLog(@"The cube 2 height: ");
        float height2 = 0.0;
        scanf("%2f", &height2);
        
        NSLog(@"The cube 2 width: ");
        float width2 = 0.0;
        scanf("%2f", &width2);    // scanf -> 把這個變數的地址取出來
        
        NSLog(@"The cube 2 length: "); // \n 換行 \f float % 顯示
        float length2 = 0.0;
        scanf("%2f", &length2);
        
        Lab2 *box1 = [[Lab2 alloc]initWithImput:height andwidth:width andlength:length];
        Lab2 *box2 = [[Lab2 alloc]initWithImput:height2 andwidth:width2 andlength:length2];
        
        NSLog(@"%.2f", [box1 cubeMath]);
        NSLog(@"%.2f", [box2 cubeMath]);
        NSLog(@"%d", [box1 compareSize:box2]);
    }
    return 0;
}
