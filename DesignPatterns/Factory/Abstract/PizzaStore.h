//
//  PizzaStore.h
//  Pizza
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pizza;

NS_ASSUME_NONNULL_BEGIN

@protocol PizzaStoreProtocol <NSObject>

- (__kindof Pizza *)createPizza:(NSString *)pizzaName;

@end

@interface PizzaStore : NSObject<PizzaStoreProtocol>

- (void)orderPizza:(NSString *)pizzaName;


@end

NS_ASSUME_NONNULL_END
