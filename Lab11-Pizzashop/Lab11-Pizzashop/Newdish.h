//
//  Newdish.h
//  Lab11-Pizzashop
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"


@interface Newdish : NSObject <KitchenDelegate>
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;


@end


