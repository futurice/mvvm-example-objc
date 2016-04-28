//
//  ViewController.h
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FooListViewModel.h"

@interface FooListViewController : UITableViewController

- (instancetype)initWithViewModel:(FooListViewModel *)viewModel;

@end

