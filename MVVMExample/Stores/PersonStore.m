//
//  PersonStore.m
//  MVVMExample
//
//  Created by Martin Richter on 02/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "PersonStore.h"
#import "Person.h"

@implementation PersonStore

- (NSArray *)fetchPeople {
    return @[
        [[Person alloc] initWithFirstName:@"Jane" lastName:@"Doe"],
        [[Person alloc] initWithFirstName:@"Joe" lastName:@"Shmoe"]
    ];
}

@end
