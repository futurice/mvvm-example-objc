//
//  NSURLSession+RAC.m
//  MVVMExample
//
//  Created by Martin Richter on 02/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "NSURLSession+RAC.h"

@implementation NSURLSession (RAC)

- (RACSignal *)rac_GET:(NSURL *)url {
    return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        NSURLSessionDataTask *task = [self dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            if (error) {
                [subscriber sendError:error];
            } else {
                [subscriber sendNext:RACTuplePack(data, response)];
                [subscriber sendCompleted];
            }
        }];

        [task resume];

        return [RACDisposable disposableWithBlock:^{
            [task cancel];
        }];
    }];
}

@end
