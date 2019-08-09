//
//  InputCollector.m
//  ContactList
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

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
