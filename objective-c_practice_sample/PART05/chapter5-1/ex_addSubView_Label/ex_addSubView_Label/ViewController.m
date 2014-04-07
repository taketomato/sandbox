//
//  ViewController.m
//  ex_addSubView_Label
//
//  Created by yoshiyuki oshige on 2013/08/17.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //1. ラベルのインスタンスを作る
    CGRect rect = CGRectMake(50, 100, 200, 30);
    UILabel * myLabel = [[UILabel alloc] initWithFrame:rect];
    //2. プロパティ設定
    myLabel.text = @" 今日もいいね!";
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.textColor = [UIColor whiteColor];
    myLabel.backgroundColor = [UIColor orangeColor];
    //3. ビューに追加する
    [self.view addSubview:myLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
