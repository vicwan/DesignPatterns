//
//  CAPizzaStore.m
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "CAPizzaStore.h"
#import "CAStyleClamPizza.h"
#import "CAStylePepperoniPizza.h"

#import "CAIngredientFactory.h"

@implementation CAPizzaStore

- (Pizza *)createPizza:(NSString *)pizzaName {
    Pizza *ret;
    CAIngredientFactory *ingredientFactory = [[CAIngredientFactory alloc] init];
    if ([pizzaName isEqualToString:@"clam"]) {
        ret = [[CAStyleClamPizza alloc] initWithIngredientFactory:ingredientFactory];
    }else if ([pizzaName isEqualToString:@"pepperoni"]) {
        ret = [[CAStylePepperoniPizza alloc] initWithIngredientFactory:ingredientFactory];
    }
    return ret;
}

@end
