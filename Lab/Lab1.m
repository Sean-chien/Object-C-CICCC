//
//  Lab1.m
//  Objective-CDex
//
//  Created by Sean Chien on 2019-07-29.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
// prints the prompt message and return the user input
NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);  // NSLog -> print
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);  //stdin -> keybroad
    // -> char result[]
    if (result != NULL) {
        
        NSString *inputStr =  [NSString stringWithUTF8String:inputChars];
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}



int main(int argc, const char * argv[]) {   // * -> this is reference , const -> final
    @autoreleasepool {                      // @ -> object
        // insert code here...
        NSLog(@"Hello, World!");  // object-C
        printf("%d\n", 10);       // C
    }
    
    while (YES) {
        NSString *input = getUserInput(200, @"Enter your string: ");
        //String input = readLine()
        NSString *menu = getUserInput(200, @"\n1.Uppercase\n2.Lowercase\n3.Numberize\n4.Canadianize\n5.Respond\n6.De-Space-It\n7.End");
        if ([menu isEqualToString:@"7"]) {
            NSLog(@"Bye!");
            break;
        } else if ([menu isEqualToString:@"1"]) {
            NSLog(@"%@", [input uppercaseString]);
            //print(input.upperCase)
        } else if ([menu isEqualToString:@"2"]) {
            NSLog(@"%@", [input lowercaseString]);
        } else if ([menu isEqualToString:@"3"]) {
            NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
            // new NSNumberFormatter();  // alloc方法将分配的内存初始化为0
            NSNumber *num = [formatter numberFromString:input];
            //formatter.numberFromString(input)
            if (num == nil) {
                NSLog(@"Error");
            } else {
                NSInteger ld = num.integerValue;  // ld -> long id
                NSLog(@"%ld", ld);
            }
        } else if ([menu isEqualToString:@"4"]) {
            NSLog(@"%@", [input stringByAppendingString: @", eh?"]);
        } else if ([menu isEqualToString:@"5"]) {
            if ([input hasSuffix: @"?"]) {
                // hasPrefix（string）返回一个 Bool 表示String是否以指定的 first
                // hasSuffix（string）返回一个 Bool 表示String是否以指定的 last
                NSLog(@"\n%s", "I don't know");
            } else if ([input hasSuffix:@"!"]) {
                NSLog(@"\n%s", "Whoa, clam down!");
            }
            
        } else if ([menu isEqualToString:@"6"]) {
            NSString *result = input;
            result = [result stringByReplacingOccurrencesOfString:@"-" withString:@"/"];
            NSLog(@"result: %@", result);
        }
    }
    return 0;
}

