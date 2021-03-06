//
//  MacroCommand.h
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface MacroCommand : Command

- (instancetype)initWithCommands:(NSArray<Command *> *)commands;

@end

NS_ASSUME_NONNULL_END
