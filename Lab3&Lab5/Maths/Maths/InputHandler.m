//
//  InputHandler.m
//  Maths
//
//  Created by Sean Chien on 2019-08-06.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
NSString *getUserInput(NSString *prompt) {
    
    int maxLength = 255;
    NSLog(@"%@", prompt);
    char inputChars [maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    
    if (result != NULL) {
        NSString *inputstr = [NSString stringWithUTF8String:inputChars];
        return [inputstr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
                return NULL;
}

@end
