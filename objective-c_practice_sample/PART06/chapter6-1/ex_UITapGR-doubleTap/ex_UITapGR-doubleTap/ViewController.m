//
//  ViewController.m
//  ex_UITapGR-doubleTap
//
//  Created by yoshiyuki oshige on 2013/08/27.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// ダブルタップとアクション接続しているメソッドの宣言
- (IBAction)doubleTapFlower:(UITapGestureRecognizer *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ダブルタップで拡大する
- (IBAction)doubleTapFlower:(UITapGestureRecognizer *)sender {
    // タップ対象のイメージビューを取得（データ型をUIImageView にキャストしておく）
    UIImageView *flower = (UIImageView *)sender.view;
    // アフィン変換が適用済みかどうかを判断する
    if(CGAffineTransformIsIdentity(sender.view.transform)){
        // 中心で3 倍に拡大
        flower.transform = CGAffineTransformMakeScale(3.0, 3.0);
    }else{
        // アフィン変換前に戻す
        flower.transform = CGAffineTransformIdentity;
    }
}
@end
