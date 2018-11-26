//
//  IngredientFactory.h
//  Factory
//
//  Created by Vic Wan on 2018/11/26.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dough;
@class Sauce;
@class Cheese;

NS_ASSUME_NONNULL_BEGIN

@interface IngredientFactory : NSObject

- (Dough *)createDough;
- (Cheese *)createCheese;
- (Sauce *)createSauce;

@end

NS_ASSUME_NONNULL_END
