//
//  StoreAssembly.h
//  MVVMExample
//
//  Created by Jaakko Kangasharju on 06/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import <Typhoon/Typhoon.h>

@class PersonStore;

@interface StoreAssembly : TyphoonAssembly

- (PersonStore *)personStore;

@end
