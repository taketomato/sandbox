//
//  ViewController.m
//  ex_UIButton_image
//
//  Created by yoshiyuki oshige on 2013/08/26.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void) hello:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // ボタンを作る
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    // 領域の設定
    button.frame = CGRectMake(50, 50, 100, 40);
    // タイトルの設定
    button.titleLabel.font = [UIFont boldSystemFontOfSize: 18];// フォント
    [button setTitle:@"Hello" forState:UIControlStateNormal];// タイトル文
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];// 文字色
    // タイトルシャドウの設定
    [button setTitleShadowColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    UILabel *label = button.titleLabel;
    // シャドウを右下にずらす
    label.shadowOffset = CGSizeMake(1, 1);
    // イメージを読み込む
    UIImage * imageData = [UIImage imageNamed:@"roundbtn"];
    // リサイザブルイメージを作る
    UIImage *resizableImage = [imageData resizableImageWithCapInsets:UIEdgeInsetsMake(20, 24, 20, 24)];
    // ボタンにバックグランドイメージを設定する
    [button setBackgroundImage:resizableImage forState:UIControlStateNormal];
    // タッチしたときに光る
    [button setShowsTouchWhenHighlighted:YES];
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
