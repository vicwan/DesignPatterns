//
//  LightOnCommand.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "LightOnCommand.h"
#import "Light.h"

@interface LightOnCommand ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOnCommand

- (instancetype)initWithLight:(Light *)light {
    if (self = [super init]) {
        _light = light;
    }
    return self;
}

- (void)execute {
    [self.light on];
}

- (void)undo {
    [self.light off];
}

@end
