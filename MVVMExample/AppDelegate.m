//
//  AppDelegate.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "AppDelegate.h"
#import "PersonListViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    PersonListViewModel *personListVM = [[PersonListViewModel alloc] init];
    PersonListViewController *personListVC = [[PersonListViewController alloc] initWithViewModel:personListVM];
    self.window.rootViewController = personListVC;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
