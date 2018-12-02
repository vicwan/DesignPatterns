//
//  main.m
//  DesignPatterns
//
//  Created by Vic Wan on 2018/11/25.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[@"1", @"2"];
        NSMutableArray *mArr = arr.mutableCopy;
        [mArr addObject:@"3"];
        NSLog(@"%@", mArr);
    }
    return 0;
}
