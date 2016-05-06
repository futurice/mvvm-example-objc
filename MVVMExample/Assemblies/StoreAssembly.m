//
//  StoreAssembly.m
//  MVVMExample
//
//  Created by Jaakko Kangasharju on 06/05/16.
//  Copyright © 2016 Futurice. All rights reserved.
//

#import "StoreAssembly.h"
#import "PersonStore.h"

@implementation StoreAssembly

- (PersonStore *)personStore
{
    return [TyphoonDefinition withClass:[PersonStore class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
    }];
}

@end
