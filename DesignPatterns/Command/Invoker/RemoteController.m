//
//  RemoteController.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import "RemoteController.h"
#import "NoCommand.h"

#define REMOTE_FUNCTIONS 7
#define REMOTE_UNDO_DEFAULT_COUNT 3

@interface RemoteController ()

@property (nonatomic, strong) NSMutableArray<Command *> *onCommands;
@property (nonatomic, strong) NSMutableArray<Command *> *offCommands;

/**
 用于 undo，记录所有之前执行过的 command
 */
@property (nonatomic, strong) NSMutableArray<Command *> *prevCommands;

@end

@implementation RemoteController

- (instancetype)init {
    if (self = [super init]) {
        _onCommands = [self initializeCommandsWithCount:REMOTE_FUNCTIONS];
        _offCommands = [self initializeCommandsWithCount:REMOTE_FUNCTIONS];
    }
    return self;
}

- (void)setCommand:(RemoteControllerFunction)index onCommand:(Command *)on offCommand:(Command *)off {
    self.onCommands[index] = on;
    self.offCommands[index] = off;
}

- (void)onButtonWasPressed:(RemoteControllerFunction)index {
    if (index >= self.onCommands.count) {
        NSLog(@"请输入正确的功能序号！");
        return;
    }
    Command *onCommand = self.onCommands[index];
    [onCommand execute];
    [self.prevCommands addObject:onCommand];
}

- (void)offButtonWasPressed:(RemoteControllerFunction)index {
    if (index >= self.onCommands.count) {
        NSLog(@"请输入正确的功能序号！");
        return;
    }
    Command *offCommand = self.offCommands[index];
    [offCommand execute];
    [self.prevCommands addObject:offCommand];
}

- (void)undo {
    if (self.prevCommands.count > 0) {
        Command *lastCommand = self.prevCommands.lastObject;
        [lastCommand undo];
        [self.prevCommands removeLastObject];
    }else {
        NSLog(@"没有更早的指令，无法撤销");
    }
}

#pragma mark - Internal
- (NSMutableArray<Command *> *)initializeCommandsWithCount:(NSInteger)count{
    NSMutableArray *commands = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i < commands.count; i++) {
        commands[i] = [[NoCommand alloc] init];
    }
    return commands;
}

- (NSMutableArray<Command *> *)prevCommands {
    if (!_prevCommands) {
        _prevCommands = [self initializeCommandsWithCount:REMOTE_UNDO_DEFAULT_COUNT];
    }
    return _prevCommands;
}

@end
