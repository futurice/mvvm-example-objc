//
//  AppDelegate.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "AppDelegate.h"
#import "FooListViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    FooListViewModel *fooListVM = [[FooListViewModel alloc] init];
    FooListViewController *fooListVC = [[FooListViewController alloc] initWithViewModel:fooListVM];
    self.window.rootViewController = fooListVC;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
