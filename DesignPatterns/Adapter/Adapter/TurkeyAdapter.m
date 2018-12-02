//
//  TurkeyAdapter.m
//  Adapter
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "TurkeyAdapter.h"
#import "../Protocol/Turkey.h"

@interface TurkeyAdapter ()

@property (nonatomic, strong) id<Turkey> turkey;

@end

@implementation TurkeyAdapter

- (instancetype)initWithTurkey:(id<Turkey>)turkey {
    if (self= [super init]) {
        _turkey = turkey;
    }
    return self;
}

- (void)quack {
    [self.turkey gobble];
}

- (void)fly {
    for (int i = 0; i < 5; i++) {
        [self.turkey fly];
    }
}

@end
