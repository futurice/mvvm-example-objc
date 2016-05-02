//
//  ViewController.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "ItemListViewController.h"

@interface ItemListViewController ()

@property (nonatomic, strong, readonly) ItemListViewModel *viewModel;

@end

@implementation ItemListViewController

- (instancetype)initWithViewModel:(ItemListViewModel *)viewModel {
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
