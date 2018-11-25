//
//  PizzaStore.m
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "PizzaStore.h"
#import "Pizza.h"

#import "../Concrete/NewYork/NYPizzaStore.h"
#import "../Concrete/CA/CAPizzaStore.h"

@implementation PizzaStore

- (void)orderPizza:(NSString *)pizzaName {
    Pizza *pizza = [self createPizza:pizzaName];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
}

- (Pizza *)createPizza:(NSString *)pizzaName {
    if ([pizzaName isEqualToString:@"cheese"] || [pizzaName isEqualToString:@"veggie"]) {
        return [[[NYPizzaStore alloc] init] createPizza:pizzaName];
    }else if ([pizzaName isEqualToString:@"clam"] || [pizzaName isEqualToString:@"pepperoni"]) {
        return [[[CAPizzaStore alloc] init] createPizza:pizzaName];
    }
    return nil;
}


@end
