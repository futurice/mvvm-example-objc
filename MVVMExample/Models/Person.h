//
//  Person.h
//  MVVMExample
//
//  Created by Martin Richter on 02/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy, readonly) NSString *firstName;
@property (nonatomic, copy, readonly) NSString *lastName;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

@end
