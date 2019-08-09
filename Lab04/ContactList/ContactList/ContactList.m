//
//  ContactList.m
//  ContactList
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _ContactArray = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void) addContact: (Contact *) contact
{
    [_ContactArray addObject: contact];
}

- (void) printContactList
{
    for (int i = 0; _ContactArray.count; i++) {
        NSLog(@"\nContact #%d: \n%@ \n----------", i, self.ContactArray[i]);
    }
}

@end
