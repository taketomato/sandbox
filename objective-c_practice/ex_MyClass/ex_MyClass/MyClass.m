//
//  MyClass.m
//  ex_MyClass
//
//  Created by tchiba on 2014/04/04.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass
- (NSString *)hello:(NSString *)who
{
    NSString * msg = [NSString stringWithFormat:@"ハロー、%@の%@さん", _where ,who];
    return msg;
}
@end
