//
//  Question4.m
//  AlgorithmDemo
//
//  Created by ENG on 2019/5/28.
//  Copyright © 2019 欧文林. All rights reserved.
//

#import "Question4.h"

@implementation Question4
- (BOOL)findNumber:(NSArray *)sourceArray targetNumber:(NSInteger)targetNumber {
    
    NSLog(@"Start to find number.");
    
    if (sourceArray.count == 0) {
        return NO;
    }

    NSInteger lastIndex = [sourceArray[0] count] - 1;
    
    for (NSInteger i = 0; i < sourceArray.count; i++) {
        NSArray *array = sourceArray[i];
        
        while (YES) {
            if (targetNumber > [array[lastIndex] integerValue]) {
                break;
            } else if (targetNumber == [array[lastIndex] integerValue]) {
                return YES;
            } else {
                if (lastIndex != 0) {
                    lastIndex = lastIndex - 1;
                } else {
                    return NO;
                }
            }
        }
    }
    
    return NO;
}
@end
