//
//  Question3.m
//  AlgorithmDemo
//
//  Created by ENG on 2019/5/28.
//  Copyright © 2019 欧文林. All rights reserved.
//

#import "Question3.h"
 
@implementation Question3
- (NSArray *)checkDuplicateNumber:(NSArray *)array {
    if (array.count == 0) {
        return nil;
    }
    NSMutableArray *duplicateArray = [NSMutableArray array];
    for (NSInteger i = 0; i < array.count; i++) {
        
        while ([array[i] integerValue] != i) {
            if (array[i] == array[[array[i] integerValue]]) {
                if (![duplicateArray containsObject:array[i]]) {
                    [duplicateArray addObject:array[i]];
                }
                break;
            }
            array = [self prm_swapArray:array beginIndex:i locationIndex:[array[i] integerValue]];
        }
    }
    
    return duplicateArray;
}

- (NSArray *)prm_swapArray:(NSArray *)sourceArray beginIndex:(NSUInteger)beginIndex locationIndex:(NSUInteger)locationIndex {
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:sourceArray];
    NSNumber *temp = newArray[beginIndex];
    newArray[beginIndex] = newArray[locationIndex];
    newArray[locationIndex] = temp;
    return newArray;
}
@end
