//
//  ViewController.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "FooListViewController.h"

@interface FooListViewController ()

@property (nonatomic, strong, readonly) FooListViewModel *viewModel;

@end

@implementation FooListViewController

- (instancetype)initWithViewModel:(FooListViewModel *)viewModel {
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
