//
//  main.m
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PizzaStore.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PizzaStore *pStore = [[PizzaStore alloc] init];
        [pStore orderPizza:@"cheese"];
        NSLog(@"10 mins later...");
        
        [pStore orderPizza:@"pepperoni"];
        NSLog(@"10 mins later...");
        
        [pStore orderPizza:@"clam"];
        NSLog(@"10 mins later...");
        
        [pStore orderPizza:@"veggie"];
        NSLog(@"we are closing, sorry!");
    }
    return 0;
}
