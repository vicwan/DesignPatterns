//
//  LightOffCommand.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "LightOffCommand.h"
#import "Light.h"

@interface LightOffCommand ()

@property (nonatomic, strong) Light *light;

@end


@implementation LightOffCommand

- (instancetype)initWithLight:(Light *)light {
    if (self = [super init]) {
        _light = light;
    }
    return self;
}

- (void)execute {
    [self.light off];
}

- (void)undo {
    [self.light on];
}

@end
