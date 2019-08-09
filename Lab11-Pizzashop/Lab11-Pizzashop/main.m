//
//  main.m
//  Lab11-Pizzashop
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Newdish.h"
#import "Newdish2.h"
#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];  // [[Kitchen alloc]init]
        Newdish *newdish = [Newdish new];
        Newdish2 *newdish2 = [Newdish2 new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeInput =  commandWords[0];
            NSString *manager = commandWords[1];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(2, commandWords.count - 1)];
            
            restaurantKitchen.delegate = nil;
            
            if ([manager isEqualToString:@"newdish"]) {
                restaurantKitchen.delegate = newdish;
            }
            
            if ([manager isEqualToString:@"newdish2"]) {
                restaurantKitchen.delegate = newdish2;
            }
            Pizza *pizza;
            if ([sizeInput isEqualToString:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            } else {
                NSArray *toppings =  [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
                PizzaSize pizSize = [Pizza sizeFromString:sizeInput];
                pizza = [[Pizza alloc]initWithSize:pizSize andToppings:toppings];
            }
            
            NSLog(@"Here's your order: %@",pizza);
        }
        
    }
    return 0;
}
