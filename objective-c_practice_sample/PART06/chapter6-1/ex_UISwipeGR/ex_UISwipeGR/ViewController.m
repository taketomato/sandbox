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

// 左右のスワイプで実行する
- (IBAction)swipeView:(UISwipeGestureRecognizer *)sender {
    CGPoint location = _frontView.center;
    CGFloat center_x = self.view.center.x;
    // スワイプした方向で分岐する
    if(sender.direction == UISwipeGestureRecognizerDirectionRight){
        // 右にスワイプしたので右に開ける
        location.x = center_x + 120;
    } else if (sender.direction == UISwipeGestureRecognizerDirectionLeft){
        // 左にスワイプしたので左に閉める（元の位置へ）
        location.x = center_x;
    }
    //_frontViewを左右に開け閉めするアニメーション
    [UIView animateWithDuration:0.5 animations:^{
        _frontView.center = location;
    }];
}

@end
