//
//  StereoOffCommand.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "StereoOffCommand.h"
#import "../Receiver/Stereo.h"

@interface StereoOffCommand ()

@property (nonatomic, strong) Stereo *stereo;

@end

@implementation StereoOffCommand

- (instancetype)initWithStereo:(Stereo *)stereo {
    if (self = [super init]) {
        _stereo = stereo;
    }
    return self;
}

- (void)execute {
    [self.stereo off];
}

- (void)undo {
    [self.stereo on];
}

@end
