//
//  PersonListViewModelTests.m
//  MVVMExample
//
//  Created by Martin Richter on 02/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PersonListViewModel.h"
#import "Person.h"

#pragma mark - Mocks

@interface MockPersonStore : PersonStore

@property (nonatomic, assign) BOOL didFetchPeople;

@end

@implementation MockPersonStore

- (RACSignal *)fetchPeople {
    self.didFetchPeople = YES;

    NSArray *people = @[
        [[Person alloc] initWithFirstName:@"A" lastName:@"B"],
        [[Person alloc] initWithFirstName:@"C" lastName:@"D"]
    ];
    
    return [RACSignal return:people];
}

@end

#pragma mark - Test Class

@interface PersonListViewModelTests : XCTestCase

@property (nonatomic, strong) MockPersonStore *mockStore;

@end

@implementation PersonListViewModelTests

- (void)setUp {
    [super setUp];
    self.mockStore = [[MockPersonStore alloc] init];
}

- (void)tearDown {
    self.mockStore = nil;
    [super tearDown];
}

- (void)testViewModelFetchesPeopleAfterInit {
    id _ __unused = [[PersonListViewModel alloc] initWithStore:self.mockStore];
    XCTAssertTrue(self.mockStore.didFetchPeople);
}

- (void)testViewModelReturnsPeopleCount {
    PersonListViewModel *viewModel = [[PersonListViewModel alloc] initWithStore:self.mockStore];
    XCTAssertEqual([viewModel numberOfPeopleInSection:0], 2);
}

- (void)testViewModelReturnsFullNames {
    XCTFail(@"Try to implement this test!");
}

@end
