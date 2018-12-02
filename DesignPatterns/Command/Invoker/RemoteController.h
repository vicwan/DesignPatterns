//
//  RemoteController.h
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Command;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, RemoteControllerFunction) {
    RemoteControllerParty,
    RemoteControllerLight,
};

@interface RemoteController : NSObject

- (void)setCommand:(RemoteControllerFunction)index onCommand:(Command *)on offCommand:(Command *)off;
- (void)onButtonWasPressed:(RemoteControllerFunction)index;
- (void)offButtonWasPressed:(RemoteControllerFunction)index;
- (void)undo;

@end

NS_ASSUME_NONNULL_END
