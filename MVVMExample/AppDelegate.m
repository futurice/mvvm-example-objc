//
//  AppDelegate.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "AppDelegate.h"
#import "ItemListViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    ItemListViewModel *itemListVM = [[ItemListViewModel alloc] init];
    ItemListViewController *itemListVC = [[ItemListViewController alloc] initWithViewModel:itemListVM];
    self.window.rootViewController = itemListVC;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
