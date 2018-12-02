//
//  MacroCommand.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "MacroCommand.h"

@interface MacroCommand ()

@property (nonatomic, strong) NSMutableArray *commands;

@end

@implementation MacroCommand

- (instancetype)initWithCommands:(NSArray<Command *> *)commands {
    if (self = [super init]) {
        _commands = commands.mutableCopy;
    }
    return self;
}

- (void)execute {
    if (self.commands.count > 0) {
        for (Command *command in self.commands) {
            [command execute];
        }
    }
}

- (void)undo {
    if (self.commands.count > 0) {
        for (Command *command in self.commands) {
            [command undo];
        }
    }
}

@end
