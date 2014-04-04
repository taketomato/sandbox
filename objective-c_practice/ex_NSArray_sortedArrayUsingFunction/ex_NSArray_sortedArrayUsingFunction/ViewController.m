//
//  ViewController.m
//  ex_NSArray_sortedArrayUsingFunction
//
//  Created by tchiba on 2014/04/03.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

//比較関係の定義
NSInteger intSort(id num1, id num2, void *context)
{
    int v1 = [num1 intValue];
    int v2 = [num2 intValue];
    if(v1 < v2)
        return NSOrderedAscending;
    else if(v1 > v2)
        return NSOrderedDescending;
    else
        return NSOrderedSame;
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *vlist = [NSMutableArray arrayWithCapacity:10];
    NSInteger v;
    for(int i=0; i<10; i++){
        v = arc4random() % 30;
        [vlist addObject:[NSNumber numberWithInteger:v]];
    }
    NSLog(@"vlist %@", vlist);  //vlistの確認
    //ソートした配列を作る
    NSArray *sortedvlist = [vlist sortedArrayUsingFunction:intSort context:nil];
    NSLog(@"sortedvlist %@", sortedvlist);    //ソート後のsortedvlistの確認
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
