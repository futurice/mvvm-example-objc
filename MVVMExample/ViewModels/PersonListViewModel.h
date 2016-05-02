//
//  PersonListViewModel.h
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonStore.h"

@interface PersonListViewModel : NSObject

- (instancetype)initWithStore:(PersonStore *)store;

- (NSUInteger)numberOfPeopleInSection:(NSInteger)section;
- (NSString *)fullNameAtIndexPath:(NSIndexPath *)indexPath;

@end
