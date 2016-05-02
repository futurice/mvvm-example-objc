//
//  ViewController.h
//  MVVMExample
//
//  Created by Martin Richter on 28/04/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemListViewModel.h"

@interface ItemListViewController : UITableViewController

- (instancetype)initWithViewModel:(ItemListViewModel *)viewModel;

@end

