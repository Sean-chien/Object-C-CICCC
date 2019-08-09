//
//  Contact.h
//  ContactList
//
//  Created by Sean Chien on 2019-08-08.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"


@interface Contact : NSObject

@property (nonatomic) NSString *fullname;
@property (nonatomic) NSString *email;

- (instancetype) initWithLogin;
@end


