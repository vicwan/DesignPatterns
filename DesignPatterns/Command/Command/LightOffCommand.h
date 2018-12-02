//
//  LightOffCommand.h
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "Command.h"
@class Light;

NS_ASSUME_NONNULL_BEGIN

@interface LightOffCommand : Command

- (instancetype)initWithLight:(Light *)light;

@end

NS_ASSUME_NONNULL_END
