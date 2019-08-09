//
//  ContactList.h
//  ContactList
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *ContactArray;
- (void) addContact: (Contact *) contact;
- (void) printContactList;

@end


