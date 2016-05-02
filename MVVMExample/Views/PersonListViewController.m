//
//  PersonListViewController.m
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "PersonListViewController.h"
#import <libextobjc/EXTScope.h>

@interface PersonListViewController ()

@property (nonatomic, strong, readonly) PersonListViewModel *viewModel;

@end

@implementation PersonListViewController

#pragma mark - Lifecycle

- (instancetype)initWithViewModel:(PersonListViewModel *)viewModel {
    self = [super initWithStyle:UITableViewStylePlain];
    if (!self) return nil;

    _viewModel = viewModel;

    return self;
}

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"PersonCell"];

    [self bindViewModel];
}

#pragma mark - Bindings

- (void)bindViewModel {

    self.title = [self.viewModel title];

    @weakify(self);

    [[self.viewModel.hasUpdatedContent
        deliverOnMainThread] // important, or view won't update instantly
        subscribeNext:^(id _) {
            @strongify(self); // this, together with @weakify, prevents a retain cycle
            NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:0];
            [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
        }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfPeopleInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];

    cell.textLabel.text = [self.viewModel fullNameAtIndexPath:indexPath];

    return cell;
}

@end
