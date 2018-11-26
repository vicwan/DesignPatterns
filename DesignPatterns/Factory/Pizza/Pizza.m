
//
//  Pizza.m
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithIngredientFactory:(IngredientFactory *)ingredientFactory {
    if (self = [super init]) {
        _ingredientFactory = ingredientFactory;
    }
    return self;
}

- (void)prepare {
    
}

- (void)bake {
    PRINT
}

- (void)cut {
    PRINT
}

- (void)box {
    PRINT
}

@end
