//
//  CAIngredientFactory.m
//  Factory
//
//  Created by Vic Wan on 2018/11/26.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "CAIngredientFactory.h"

#import "CADough.h"
#import "CASauce.h"
#import "CACheese.h"

@implementation CAIngredientFactory

- (Cheese *)createCheese {
    return [[CACheese alloc] init];
}

- (Sauce *)createSauce {
    return [[CASauce alloc] init];
}

- (Dough *)createDough {
    return [[CADough alloc] init];
}

@end
