//
//  ViewController.m
//  ex_UISwipeGR
//
//  Created by yoshiyuki oshige on 2013/08/28.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// 上に被せたビューのプロパティ宣言
@property (weak, nonatomic) IBOutlet UIView *frontView;
// 左右スワイプで実行するメソッドの宣言
- (IBAction)swipeView:(UISwipeGestureRecognizer *)sender;

//カバーするボタンのプロパティ宣言
@property (weak, nonatomic) IBOutlet UIButton *coverButton;
//カバーするボタンのメソッド宣言
- (IBAction)closeFrontView:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // カバーボタンを隠す
    _coverButton.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 左右のスワイプで実行する
- (IBAction)swipeView:(UISwipeGestureRecognizer *)sender {
    CGPoint location = _frontView.center;
    CGFloat center_x = self.view.center.x;
    // スワイプした方向で分岐する
    if(sender.direction == UISwipeGestureRecognizerDirectionRight){
        // 右にスワイプしたので右に開ける
        location.x = center_x + 120;
        // カバーボタンを表示する
        _coverButton.hidden = NO;
    } else if (sender.direction == UISwipeGestureRecognizerDirectionLeft){
        // 左にスワイプしたので左に閉める（元の位置へ）
        location.x = center_x;
        // カバーボタンを隠す
        _coverButton.hidden = YES;
    }
    //_frontViewを左右に開け閉めするアニメーション
    [UIView animateWithDuration:0.5 animations:^{
        _frontView.center = location;
    }];
}

// 透明ボタンのタップで実行する
- (IBAction)closeFrontView:(UIButton *)sender {
    // カバーボタンを隠す
    _coverButton.hidden = YES;
    //_coverView を閉めるアニメーション
    [UIView animateWithDuration:0.5 animations:^{
        _frontView.center = CGPointMake(160, 284);
    }];
}

@end
