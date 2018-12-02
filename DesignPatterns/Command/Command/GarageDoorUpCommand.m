//
//  GarageDoorUpCommand.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "GarageDoorUpCommand.h"
#import "../Receiver/GarageDoor.h"

@interface GarageDoorUpCommand ()

@property (nonatomic, strong) GarageDoor *garageDoor;

@end

@implementation GarageDoorUpCommand

- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor {
    if (self = [super init]) {
        _garageDoor = garageDoor;
    }
    return self;
}

- (void)execute {
    [self.garageDoor up];
}

- (void)undo {
    [self.garageDoor down];
}

@end
