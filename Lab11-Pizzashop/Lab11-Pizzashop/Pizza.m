//
//  Pizza.m
//  Lab11-Pizzashop
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings
{
    self = [super init];    // self -> calling the method, getter
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (Pizza *)largePepperoni {
    return [[Pizza alloc] initWithSize:LARGE andToppings:@[@"Pepperoni",@"Ham",@"Cheese"]];
}

+ (Pizza *)meatLoversWithSize:(PizzaSize)size {
    return [[Pizza alloc]initWithSize:MEDIUM andToppings:@[@"Chicken",@"Beef",@"Pork"]];
}

+ (PizzaSize) sizeFromString: (NSString *) str {
    NSString *lowered = str.lowercaseString;
    if ([lowered isEqualToString:@"small"]) {
        return SMALL;
    } else if ([lowered isEqualToString:@"Medium"]) {
        return MEDIUM;
        
    } else {
        return LARGE;
    }
}

- (NSString *)description
{
    NSString *toppings;
    if (_toppings.count > 0) {
        toppings = [_toppings componentsJoinedByString:@" "];
    } else {
        toppings = @"no topping";
    }
    return [NSString stringWithFormat:@"Pizza - %d size and toppings %@", _size, toppings];
}
@end
