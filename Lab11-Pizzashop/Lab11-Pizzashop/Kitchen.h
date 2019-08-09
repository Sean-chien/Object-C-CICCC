//
//  Kitchen.h
//  Lab11-Pizzashop
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end

@interface Kitchen : NSObject


@property (nonatomic, weak) id<KitchenDelegate> delegate;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end



