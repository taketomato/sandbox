//
//  ViewController.m
//  ex_UIButton
//
//  Created by yoshiyuki oshige on 2013/08/26.
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
    
    // ボタンを作る
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    // ボタンタイトル
    [button setTitle:@"Hello" forState:UIControlStateNormal];
    [button setTitle:@" こんにちは" forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont boldSystemFontOfSize: 18];
    // ボタンの領域（表示座標と縦横サイズ）
    button.frame = CGRectMake(50, 50, 100, 40);
    // ボタンをビューに追加する
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
