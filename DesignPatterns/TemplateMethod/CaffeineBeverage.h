//
//  CaffeineBeverage.h
//  DesignPatterns
//
//  Created by Vic Wan on 2018/12/3.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaffeineBeverage : NSObject

- (void)prepareReceipe;

- (void)boilWater;
- (void)brew;
- (void)pourInCup;
- (void)addCondiments;

@end

NS_ASSUME_NONNULL_END
