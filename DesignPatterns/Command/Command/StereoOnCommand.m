//
//  StereoOnCommand.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "StereoOnCommand.h"
#import "../Receiver/Stereo.h"

@interface StereoOnCommand ()

@property (nonatomic, strong) Stereo *stereo;

@end

@implementation StereoOnCommand

- (instancetype)initWithStereo:(Stereo *)stereo {
    if (self = [super init]) {
        _stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo on];
}

- (void)undo {
    [self.stereo off];
}

@end
