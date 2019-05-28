//
//  Question5.h
//  AlgorithmDemo
//
//  Created by ENG on 2019/5/28.
//  Copyright © 2019 欧文林. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 将一个字符串中的空格替换成 "%20"
 
 Input:
 "A B"
 
 Output:
 "A%20B"
 
 */

NS_ASSUME_NONNULL_BEGIN

@interface Question5 : NSObject
- (NSString *)replaceSpace:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
