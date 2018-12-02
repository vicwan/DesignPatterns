//
//  Command.h
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject

- (void)execute;
- (void)undo;

@end

NS_ASSUME_NONNULL_END
