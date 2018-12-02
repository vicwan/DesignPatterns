//
//  GarageDoorDownCommand.h
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "Command.h"
@class GarageDoor;

NS_ASSUME_NONNULL_BEGIN

@interface GarageDoorDownCommand : Command

- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor;

@end

NS_ASSUME_NONNULL_END
