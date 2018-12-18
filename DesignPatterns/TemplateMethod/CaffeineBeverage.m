//
//  CaffeineBeverage.m
//  DesignPatterns
//
//  Created by Vic Wan on 2018/12/3.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "CaffeineBeverage.h"

@implementation CaffeineBeverage

- (void)prepareReceipe {
    [self boilWater];
    [self brew];
    [self pourInCup];
    [self addCondiments];
}

- (void)boilWater {
    NSLog(@"Boiling water");
}
- (void)pourInCup {
    NSLog(@"Pouring in cup");
}

@end
