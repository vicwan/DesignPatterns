//
//  Pizza.h
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PRINT NSLog(@"%@ %@",self.className,NSStringFromSelector(_cmd));

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

- (void)prepare;
- (void)bake;
- (void)cut;
- (void)box;

@end

NS_ASSUME_NONNULL_END
