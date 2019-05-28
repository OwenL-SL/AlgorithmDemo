//
//  Question5.m
//  AlgorithmDemo
//
//  Created by ENG on 2019/5/28.
//  Copyright © 2019 欧文林. All rights reserved.
//

#import "Question5.h"

@implementation Question5
- (NSString *)replaceSpace:(NSString *)str {
    NSInteger p1 = str.length - 1;
    NSMutableString *newStr = [NSMutableString stringWithString:str];
    for (NSInteger i = 0; i < str.length - 1; i++) {
        NSString *tempStr = [str substringWithRange:NSMakeRange(i, 1)];
        if ([tempStr isEqualToString:@" "]) {
            [newStr appendString:@"  "];
        }
    }
    
    NSInteger p2 = newStr.length - 1;
    while (p1 >= 0 && p2 >= 0) {
        NSString *tempStr = [newStr substringWithRange:NSMakeRange(p1--, 1)];
        if ([tempStr isEqualToString:@" "]) {
            [newStr replaceCharactersInRange:NSMakeRange(p2--, 1) withString:@"0"];
            [newStr replaceCharactersInRange:NSMakeRange(p2--, 1) withString:@"2"];
            [newStr replaceCharactersInRange:NSMakeRange(p2--, 1) withString:@"%"];
        } else {
            [newStr replaceCharactersInRange:NSMakeRange(p2--, 1) withString:tempStr];
        }
    }
    
    return [newStr copy];
}
@end
