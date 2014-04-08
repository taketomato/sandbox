//
//  ViewController.m
//  ex_UILongPressGR_drop
//
//  Created by tchiba on 2014/04/08.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *arrow;
- (IBAction)longPress:(UILongPressGestureRecognizer *)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //矢印を隠しておく
    _arrow.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)longPress:(UILongPressGestureRecognizer *)sender {
    //長押しを開始したタイミングで一回だけ実行する
    if(sender.state == UIGestureRecognizerStateBegan){
        //矢印を表示する
        _arrow.hidden = NO;
        //矢印を長押ししている位置の画面外の真上に移動する
        CGPoint pt = [sender locationInView:self.view];
        CGFloat height = _arrow.bounds.size.height;
        _arrow.center = CGPointMake(pt.x, -50);
        //長押ししている位置に真上から落とすアニメーションを実行する
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
            _arrow.center = CGPointMake(pt.x, pt.y - height/2);
        }
                         completion:nil];
    }
}
@end
