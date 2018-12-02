//
//  main.m
//  Adapter
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreteClass/MallardDuck.h"
#import "ConcreteClass/WildTurkey.h"
#import "Adapter/TurkeyAdapter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MallardDuck *mallardDuck = [[MallardDuck alloc] init];
        WildTurkey *wildTurkey = [[WildTurkey alloc] init];
        TurkeyAdapter *turkeyAdapter = [[TurkeyAdapter alloc] initWithTurkey:wildTurkey];
        
        [mallardDuck quack];
        [mallardDuck fly];
        
        [wildTurkey gobble];
        [wildTurkey fly];
        
        [turkeyAdapter quack];
        [turkeyAdapter fly];
    }
    return 0;
}
