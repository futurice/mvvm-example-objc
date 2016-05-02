//
//  Person.m
//  MVVMExample
//
//  Created by Martin Richter on 02/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {
    self = [super init];
    if (!self) return nil;

    _firstName = [firstName copy];
    _lastName = [lastName copy];

    return self;
}

@end
