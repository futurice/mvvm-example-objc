//
//  PersonListViewController.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "PersonListViewController.h"

@interface PersonListViewController ()

@property (nonatomic, strong, readonly) PersonListViewModel *viewModel;

@end

@implementation PersonListViewController

- (instancetype)initWithViewModel:(PersonListViewModel *)viewModel {
    self = [super initWithStyle:UITableViewStylePlain];
    if (!self) return nil;

    _viewModel = viewModel;

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
}

@end
