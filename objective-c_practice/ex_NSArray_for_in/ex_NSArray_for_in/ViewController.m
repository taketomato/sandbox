//
//  ViewController.m
//  ex_NSArray_for_in
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
    
    NSArray *intlist = @[@16, @5, @25, @54 ];
    NSInteger sum = 0;
    //値をnumに取り出す
    for( NSString *num in intlist){
        //数値オブジェクトをintValueで計算できる数値に変換する
        //NSString *numの中にintlistの中身を順番に入れる
        sum += [num intValue];
    }
    NSLog(@"合計 %d" , sum );
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
