//
//  ViewController.m
//  ex_UIButton_addTarget
//
//  Created by yoshiyuki oshige on 2013/08/26.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// ボタンで実行するhello メソッドの宣言
- (void) hello:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //ボタンを作る
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    //タイトルとフォント
    [button setTitle:@"Hello" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont boldSystemFontOfSize: 18];
    //文字色と背景色
    button.tintColor = [UIColor whiteColor];
    button.backgroundColor = [UIColor redColor];
    //表示位置と縦横サイズ
    button.frame = CGRectMake(50, 50, 100, 40);
    // ボタンにアクションを設定する
    [button addTarget:self action:@selector(hello:) forControlEvents:UIControlEventTouchUpInside];
    // ボタンをビューに追加する
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ボタンのタッチで実行するメソッド
- (void) hello:(UIButton *)sender
{
    NSLog(@" ハロー");
}

@end
