//
//  Question3.h
//  AlgorithmDemo
//
//  Created by ENG on 2019/5/28.
//  Copyright © 2019 欧文林. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 题目：
 在一个长度为 n 的数组里的所有数字都在 0 到 n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字是重复的，也不知道每个数字重复几次。请找出数组中任意一个重复的数字。
 
 Input:
 {2, 3, 1, 0, 2, 5}
 
 Output:
 2
 
 要求时间复杂度 O(N)，空间复杂度 O(1)。
 */
NS_ASSUME_NONNULL_BEGIN

@interface Question3 : NSObject

- (NSArray *)checkDuplicateNumber:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
