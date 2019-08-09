//
//  Contact.m
//  ContactList
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithLogin
{
    self = [super init];
    if (self) {
        _fullname = getUserInput(@"\nYour fullname: ");
        _email = getUserInput(@"\nYour E-mail: ");
    }
    return self;
}
- (NSString *)description {
    return [NSString stringWithFormat:@"fullname: %@\nE-mail: ", _fullname, _email];
}

@end
