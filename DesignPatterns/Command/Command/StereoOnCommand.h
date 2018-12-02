//
//  StereoOnCommand.h
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "Command.h"
@class Stereo;

NS_ASSUME_NONNULL_BEGIN

@interface StereoOnCommand : Command

- (instancetype)initWithStereo:(Stereo *)stereo;

@end

NS_ASSUME_NONNULL_END
