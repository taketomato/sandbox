//
//  ViewController.m
//  ex_UIButton_roundButton
//
//  Created by yoshiyuki oshige on 2013/08/26.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"
//CALayerクラスのインポート
#import <QuartzCore/CALayer.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // ボタンを作る
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 50, 100, 30);
    // 背景色
    UIColor *bkgcolor = [UIColor colorWithRed:20/255.0 green:220/255.0 blue:128/255.0 alpha:1.0];
    button.backgroundColor = bkgcolor;
    // 輪郭線を描く
    [button.layer setCornerRadius:10.0];
    [button.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [button.layer setBorderWidth:1.0];
    // タイトルの設定
    button.titleLabel.font = [UIFont boldSystemFontOfSize: 18];
    [button setTitle:@"Hello" forState:UIControlStateNormal];
    // タイトルの色
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    // ボタン押下時のタイトルの色
    [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
    // タイトルシャドウの設定
    [button setTitleShadowColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    button.titleLabel.shadowOffset = CGSizeMake(1, 1);
    
    // ボタンをビューに追加する
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
