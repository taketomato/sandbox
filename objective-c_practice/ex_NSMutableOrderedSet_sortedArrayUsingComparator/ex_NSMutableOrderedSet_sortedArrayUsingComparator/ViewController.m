//
//  ViewController.m
//  ex_NSMutableOrderedSet_sortedArrayUsingComparator
//
//  Created by tchiba on 2014/04/03.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //comparatorブロックの定義
    NSComparisonResult(^comparator)(id,id)=^(id obj1, id obj2)
    {
        int v1 = [obj1 intValue];
        int v2 = [obj2 intValue];
        
        if(v1 < v2)
            return (NSComparisonResult)NSOrderedAscending;
        else if(v1 > v2)
            return (NSComparisonResult)NSOrderedDescending;
        else
            return (NSComparisonResult)NSOrderedSame;
    };
    
    //オーダーセットを作る
    NSArray *nums = @[@2, @8, @24, @3, @5];
    NSMutableOrderedSet *numOrderSet = [NSMutableOrderedSet orderedSetWithArray:nums];
    [numOrderSet addObject:@11];
    //comparatorブロックを使ってソートする
    NSArray *sortedArray = [numOrderSet sortedArrayUsingComparator:comparator];
    NSLog(@"nums = %@", nums);  //コンソールに出力されない　なんで？
    NSLog(@"sortedArray = %@", sortedArray);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
