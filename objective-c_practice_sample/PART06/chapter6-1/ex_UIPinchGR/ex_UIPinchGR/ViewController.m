//
//  ViewController.m
//  ex_UIPinchGR
//
//  Created by yoshiyuki oshige on 2013/08/27.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //スケールを保存するインスタンス変数
    CGFloat prevScale;
}
//拡大縮小するイメージビューのプロパティ宣言
@property (weak, nonatomic) IBOutlet UIImageView *flower;
//ピンチ操作とアクション接続するメソッド宣言
- (IBAction)pinchFlower:(UIPinchGestureRecognizer *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 初期化
    prevScale = 1.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ピンチ操作に合わせて拡大縮小する
- (IBAction)pinchFlower:(UIPinchGestureRecognizer *)sender {
    if(sender.state == UIGestureRecognizerStateBegan){
        // 前回のピンチ操作のスケールにセットする
        sender.scale = prevScale;
    } else if(sender.state == UIGestureRecognizerStateChanged){
        // スケールに合わせて拡大縮小する
        _flower.transform = CGAffineTransformMakeScale(sender.scale, sender.scale);
    } else if(sender.state == UIGestureRecognizerStateEnded){
        // ピンチ操作終了時のスケールを保存する
        prevScale = sender.scale;
    }
}
@end
