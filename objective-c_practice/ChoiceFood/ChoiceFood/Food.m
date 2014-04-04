//
//  Food.m
//  ChoiceFood
//
//  Created by tchiba on 2014/04/04.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "Food.h"

@implementation Food

- (id)init
{
    self = [self initWithFoods:@[]];
    return self;
}

//イニシャライザ
- (id)initWithFoods:(NSArray *)entryFoods
{
    self = [super init];
    if(entryFoods.count<=0){
        foods = @[@"和食", @"中華", @"インド料理", @"イタリア料理"];
    }
    else{
        foods = [[NSArray alloc]initWithArray:entryFoods];
    }
    _counter = 0;
    return self;
}

- (NSString *)choiceFood
{
    _counter++;
    NSInteger pos = arc4random()%(foods.count);
    return foods[pos];
}

@end
