//
//  ViewController.m
//  ex_UIPinchGR
//
//  Created by tchiba on 2014/04/08.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //スケールを保存するインスタンス変数
    CGFloat prevScale;
}
@property (weak, nonatomic) IBOutlet UIImageView *flower;
- (IBAction)pinchFlower:(UIPinchGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //初期化
    prevScale = 1.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pinchFlower:(UIPinchGestureRecognizer *)sender {
    if(sender.state == UIGestureRecognizerStateBegan){
        //前回のピンチ操作のスケールにセットする
        sender.scale = prevScale;
    }
    else if(sender.state == UIGestureRecognizerStateChanged) {
        //スケールにあわせて拡大縮小する
        _flower.transform = CGAffineTransformMakeScale(sender.scale, sender.scale);
    }
    else if(sender.state == UIGestureRecognizerStateEnded) {
        //ピンチ操作終了時のスケールを保存する
        prevScale = sender.scale;
    }
}
@end
