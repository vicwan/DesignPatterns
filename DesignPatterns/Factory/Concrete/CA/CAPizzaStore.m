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

@implementation CAPizzaStore

- (Pizza *)createPizza:(NSString *)pizzaName {
    Pizza *ret;
    if ([pizzaName isEqualToString:@"clam"]) {
        ret = [[CAStyleClamPizza alloc] init];
    }else if ([pizzaName isEqualToString:@"pepperoni"]) {
        ret = [[CAStylePepperoniPizza alloc] init];
    }
    return ret;
}

@end
