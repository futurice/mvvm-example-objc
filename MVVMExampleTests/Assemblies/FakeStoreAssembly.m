//
//  FakeStoreAssembly.m
//  MVVMExample
//
//  Created by Jaakko Kangasharju on 06/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "FakeStoreAssembly.h"
#import "PersonStore.h"
#import "Person.h"

@interface FakePersonStore : PersonStore

@property (nonatomic, assign) BOOL didFetchPeople;

@end

@implementation FakePersonStore

- (RACSignal *)fetchPeople {
    self.didFetchPeople = YES;

    NSArray *people = @[
                        [[Person alloc] initWithFirstName:@"A" lastName:@"B"],
                        [[Person alloc] initWithFirstName:@"C" lastName:@"D"]
                        ];
    return [RACSignal return:people];
}

@end

@implementation FakeStoreAssembly

- (PersonStore *)personStore
{
    return [TyphoonDefinition withClass:[FakePersonStore class]];
}

@end
