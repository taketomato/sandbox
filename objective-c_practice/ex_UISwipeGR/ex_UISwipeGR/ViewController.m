//
//  ViewController.m
//  ex_UISwipeGR
//
//  Created by tchiba on 2014/04/08.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *frontView;
- (IBAction)swipeView:(UISwipeGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIButton *coverButton;
- (IBAction)closeFrontView:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //カバーボタンを隠す
    _coverButton.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swipeView:(UISwipeGestureRecognizer *)sender {
    CGPoint location = _frontView.center;
    CGFloat center_x = self.view.center.x;
    
    //スワイプした方向で分岐する
    if(sender.direction == UISwipeGestureRecognizerDirectionRight){
        //右にスワイプしたので右に開ける
        location.x = center_x + 120;
        _coverButton.hidden = NO;
    }
    else if(sender.direction == UISwipeGestureRecognizerDirectionLeft){
        //左にスワイプしたので左に閉める(元の位置へ)
        location.x = center_x;
        _coverButton.hidden = YES;
    }
    
    //_frontViewを左右に開け閉めするアニメーション
    [UIView animateWithDuration:0.5
                     animations:^{
                         _frontView.center = location;
                     }];
}
- (IBAction)closeFrontView:(UIButton *)sender {
    //カバーボタンを隠す
    _coverButton.hidden = YES;
    //_coverViewを閉めるアニメーション
    [UIView animateWithDuration:0.5
                     animations:^{
                         _frontView.center = CGPointMake(160, 284);
                     }];
}
@end
