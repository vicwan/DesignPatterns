//
//  CAStylePepperoniPizza.m
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "CAStylePepperoniPizza.h"

@implementation CAStylePepperoniPizza

- (void)prepare {
    Dough *dough = [self.ingredientFactory createDough];
    Cheese *cheese = [self.ingredientFactory createCheese];
    Sauce *sauce = [self.ingredientFactory createSauce];
    
    NSLog(@"preparing %@, %@, %@", dough.className, cheese.className, sauce.className);
}

@end
