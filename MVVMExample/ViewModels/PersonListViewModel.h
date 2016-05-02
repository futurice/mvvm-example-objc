//
//  PersonListViewModel.h
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "PersonStore.h"

@interface PersonListViewModel : NSObject

@property (nonatomic, readonly) RACSignal *hasUpdatedContent;

- (instancetype)initWithStore:(PersonStore *)store;

- (NSString *)title;
- (NSUInteger)numberOfPeopleInSection:(NSInteger)section;
- (NSString *)fullNameAtIndexPath:(NSIndexPath *)indexPath;

@end
