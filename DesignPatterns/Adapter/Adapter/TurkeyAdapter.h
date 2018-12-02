//
//  TurkeyAdapter.h
//  Adapter
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../Protocol/Duck.h"

@protocol Turkey;

NS_ASSUME_NONNULL_BEGIN

@interface TurkeyAdapter : NSObject<Duck>

- (instancetype)initWithTurkey:(id<Turkey>)turkey;

@end

NS_ASSUME_NONNULL_END
