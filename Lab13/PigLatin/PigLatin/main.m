//
//  main.m
//  PigLatin
//
//  Created by Derrick Park on 2017-04-28.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MyPigLatin.h"

int main(int argc, const char * argv[]) {
	
		NSString *s = [@"Kale Chips" pigLatin];
		NSLog(@"%@", s);
	
    return 0;
}
