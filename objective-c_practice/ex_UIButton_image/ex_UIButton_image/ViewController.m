//
//  ViewController.m
//  ex_UIButton_image
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)hello:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //ボタンを作る
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //領域の設定
    button.frame = CGRectMake(50, 50, 200, 40);
    
    //タイトルの設定
    button.titleLabel.font = [UIFont boldSystemFontOfSize:18];  //フォント
    [button setTitle:@"Hello at Top of the world." forState:UIControlStateNormal];   //タイトル文
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];  //文字色
    //タイトルシャドウの設定
    [button setTitleShadowColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    UILabel *label = button.titleLabel;
    //シャドウを右下にずらす
    label.shadowOffset = CGSizeMake(1,1);
    
    //イメージを読み込む
    UIImage *imageData = [UIImage imageNamed:@"roundbtn"];
    //リサイザブルイメージを作る
    UIImage *resizableImage = [imageData resizableImageWithCapInsets:UIEdgeInsetsMake(20, 24, 20, 24)];
    //ボタンにバックグランドイメージを設定する
    [button setBackgroundImage:resizableImage forState:UIControlStateNormal];
    //タッチしたときに光る
    [button setShowsTouchWhenHighlighted:YES];
    
    //ボタンにアクションを追加する
    [button addTarget:self action:@selector(hello:) forControlEvents:UIControlEventTouchUpInside];
    //ボタンをビューに追加する
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)hello:(UIButton *)sender
{
    NSLog(@"ハロー");
}
@end
