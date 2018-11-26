//
//  NYIngredientFactory.m
//  Factory
//
//  Created by Vic Wan on 2018/11/26.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "NYIngredientFactory.h"

#import "NYCheese.h"
#import "NYSauce.h"
#import "NYDough.h"

@implementation NYIngredientFactory

- (Cheese *)createCheese {
    return [[NYCheese alloc] init];
}

- (Sauce *)createSauce {
    return [[NYSauce alloc] init];
}

- (Dough *)createDough {
    return [[NYDough alloc] init];
}

@end
