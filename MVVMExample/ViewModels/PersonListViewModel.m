//
//  PersonListViewModel.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "PersonListViewModel.h"
#import "Person.h"
#import <UIKit/UITableView.h>

@interface PersonListViewModel ()

@property (nonatomic, strong, readonly) PersonStore *store;
@property (nonatomic, strong) NSArray *people;

@end

@implementation PersonListViewModel

#pragma mark - Lifecycle

- (instancetype)initWithStore:(PersonStore *)store {
    self = [super init];
    if (!self) return nil;

    _store = store;

    RAC(self, people) = [[store fetchPeople] startWith:@[]];

    _hasUpdatedContent = [RACObserve(self, people) mapReplace:@(YES)];

    return self;
}

#pragma mark - Data Source

- (NSString *)title {
    return @"People";
}

- (NSUInteger)numberOfPeopleInSection:(NSInteger)section {
    return self.people.count;
}

- (NSString *)fullNameAtIndexPath:(NSIndexPath *)indexPath {
    Person *person = [self personAtIndexPath:indexPath];
    return [NSString stringWithFormat:@"%@ %@", person.firstName, person.lastName];
}

- (Person *)personAtIndexPath:(NSIndexPath *)indexPath {
    return self.people[indexPath.row];
}

@end
