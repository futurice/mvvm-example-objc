//
//  AppAssembly.h
//  MVVMExample
//
//  Created by Jaakko Kangasharju on 06/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <Typhoon/Typhoon.h>

@class AppDelegate;
@class PersonListViewModel;
@class StoreAssembly;

@interface AppAssembly : TyphoonAssembly

@property (nonatomic, strong, readonly) StoreAssembly *storeAssembly;

- (AppDelegate *)appDelegate;
- (PersonListViewModel *)personListViewModel;

@end
