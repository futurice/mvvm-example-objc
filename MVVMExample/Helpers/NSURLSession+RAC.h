//
//  NSURLSession+RAC.h
//  MVVMExample
//
//  Created by Martin Richter on 02/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface NSURLSession (RAC)

- (RACSignal *)rac_GET:(NSURL *)url;

@end
