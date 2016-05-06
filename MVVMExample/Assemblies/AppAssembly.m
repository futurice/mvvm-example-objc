//
//  AppAssembly.m
//  MVVMExample
//
//  Created by Jaakko Kangasharju on 06/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <Typhoon.h>
#import "AppAssembly.h"
#import "StoreAssembly.h"
#import "AppDelegate.h"
#import "PersonListViewController.h"
#import "PersonListViewModel.h"

@implementation AppAssembly

- (AppDelegate *)appDelegate
{
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(rootViewController) with:[self rootViewController]];
    }];
}

- (PersonListViewController *)rootViewController
{
    return [TyphoonDefinition withClass:[PersonListViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithViewModel:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self personListViewModel]];
        }];
    }];
}

- (PersonListViewModel *)personListViewModel
{
    return [TyphoonDefinition withClass:[PersonListViewModel class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithStore:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[_storeAssembly personStore]];
        }];
    }];
}

@end
