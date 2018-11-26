//
//  NYPizzaStore.m
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleCheesePizza.h"
#import "NYStyleVeggiePizza.h"

#import "NYIngredientFactory.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)pizzaName {
    Pizza *ret;
    IngredientFactory *ingredientFactory = [[NYIngredientFactory alloc] init];
    if ([pizzaName isEqualToString:@"veggie"]) {
        ret = [[NYStyleVeggiePizza alloc] initWithIngredientFactory:ingredientFactory];
    }else if ([pizzaName isEqualToString:@"cheese"]) {
        ret = [[NYStyleCheesePizza alloc] initWithIngredientFactory:ingredientFactory];
    }
    return ret;
}

@end
