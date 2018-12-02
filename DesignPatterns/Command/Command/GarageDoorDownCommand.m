//
//  GarageDoorDownCommand.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "GarageDoorDownCommand.h"
#import "../Receiver/GarageDoor.h"

@interface GarageDoorDownCommand ()

@property (nonatomic, strong) GarageDoor *garageDoor;

@end

@implementation GarageDoorDownCommand

- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor {
    if (self = [super init]) {
        _garageDoor = garageDoor;
    }
    return self;
}

- (void)execute {
    [self.garageDoor down];
}

- (void)undo {
    [self.garageDoor up];
}

@end
