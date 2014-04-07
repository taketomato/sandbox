//
//  ViewController.m
//  ex_UILongPressGR
//
//  Created by yoshiyuki oshige on 2013/08/28.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//矢印をアウトレット接続してプロパティ宣言
@property (weak, nonatomic) IBOutlet UIImageView *arrow;
//ロングプレス操作とアクション接続するメソッド宣言
- (IBAction)longPress:(UILongPressGestureRecognizer *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 矢印を隠しておく
    _arrow.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 長押ししている座標に矢印を落とす
- (IBAction)longPress:(UILongPressGestureRecognizer *)sender {
    
    // 長押しを開始したタイミングで1 回だけ実行する
    if(sender.state == UIGestureRecognizerStateBegan){
        // 矢印を表示する
        _arrow.hidden = NO;
        // 矢印を長押ししている位置の画面外の真上に移動する
        CGPoint pt = [sender locationInView:self.view];
        CGFloat height = _arrow.bounds.size.height;
        _arrow.center = CGPointMake(pt.x, -50);
        // 長押ししている位置に真上から落とすアニメーションを実行する
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             _arrow.center = CGPointMake(pt.x,pt.y - height/2);
                         }
                         completion:nil];
    }
}

@end
