//
//  main.m
//  TemplateMethod
//
//  Created by Vic Wan on 2018/12/3.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tea.h"
#import "Coffee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Tea *tea = [[Tea alloc] init];
        [tea prepareReceipe];
    }
    return 0;
}
