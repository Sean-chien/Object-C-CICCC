//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Sean Chien on 2019-08-07.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(int, PizzaSize) {
    SMALL, MEDIUM, LARGE
};

@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray <NSString *> *toppings;   // topping -> 配料
- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;
+ (PizzaSize) sizeFromString: (NSString *) str;   // + -> static, when make a class
+ (Pizza *)largePepperoni;
+ (Pizza *)meatLoversWithSize:(PizzaSize)size;
  

@end


