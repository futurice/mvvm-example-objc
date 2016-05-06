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
#import "AppAssembly.h"
#import "FakeStoreAssembly.h"

#pragma mark - Test Class

@interface PersonListViewModelTests : XCTestCase

@property (nonatomic, strong) AppAssembly *assembly;

@end

@implementation PersonListViewModelTests

- (void)setUp {
    [super setUp];
    self.assembly = [[[AppAssembly alloc] init] activateWithCollaboratingAssemblies:@[
                                                                                      [[FakeStoreAssembly alloc] init],
                                                                                      ]];

}

- (void)tearDown {
    self.assembly = nil;
    [super tearDown];
}

- (void)testViewModelReturnsPeopleCount {
    PersonListViewModel *viewModel = [self.assembly personListViewModel];
    XCTAssertEqual([viewModel numberOfPeopleInSection:0], 2);
}

- (void)testViewModelReturnsFullNames {
    XCTFail(@"Try to implement this test!");
}

@end
