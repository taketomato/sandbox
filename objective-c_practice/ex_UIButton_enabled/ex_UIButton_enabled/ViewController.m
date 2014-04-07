//
//  ViewController.m
//  ex_UIButton_enabled
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//ボタンで実行するメソッド
- (void)agree:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //ボタンを作る
    UIButton *agreeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    //有効状態のタイトル
    [agreeButton setTitle:@"了解です" forState:UIControlStateNormal];
    //無効状態のタイトル
    [agreeButton setTitle:@"確認済み" forState:UIControlStateDisabled];
    agreeButton.titleLabel.font = [UIFont systemFontOfSize:16];
    agreeButton.frame = CGRectMake(50, 50, 100, 30);
    //ボタンにアクションを追加する
    [agreeButton addTarget:self action:@selector(agree:) forControlEvents:UIControlEventTouchUpInside];
    
    //ボタンをビューに追加する
    [self.view addSubview:agreeButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//ボタンのタッチで実行するメソッド
- (void)agree:(UIButton *)sender
{
    NSLog(@"了解");
    //ボタンを無効に設定する
    sender.enabled = NO;
}
@end
