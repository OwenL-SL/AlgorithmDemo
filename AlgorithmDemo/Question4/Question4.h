//
//  Question4.h
//  AlgorithmDemo
//
//  Created by ENG on 2019/5/28.
//  Copyright © 2019 欧文林. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 给定一个二维数组，其每一行从左到右递增排序，从上到下也是递增排序。给定一个数，判断这个数是否在该二维数组中。
 
 Consider the following matrix:
 [
 [1,   4,  7, 11, 15],
 [2,   5,  8, 12, 19],
 [3,   6,  9, 16, 22],
 [10, 13, 14, 17, 24],
 [18, 21, 23, 26, 30]
 ]
 
 Given target = 5, return true.
 Given target = 20, return false.
 
 */
NS_ASSUME_NONNULL_BEGIN

@interface Question4 : NSObject

- (BOOL)findNumber:(NSArray *)sourceArray targetNumber:(NSInteger)targetNumber;

@end

NS_ASSUME_NONNULL_END
