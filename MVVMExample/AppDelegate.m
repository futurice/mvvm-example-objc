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

    // Create store
    PersonStore *personStore = [[PersonStore alloc] init];

    // Create view model, injecting store
    PersonListViewModel *personListVM = [[PersonListViewModel alloc] initWithStore:personStore];

    // Create view controller, injecting view model
    PersonListViewController *personListVC = [[PersonListViewController alloc] initWithViewModel:personListVM];

    // Wrap it in navigation controller before setting it as root view
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:personListVC];
    self.window.rootViewController = navigationController;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
