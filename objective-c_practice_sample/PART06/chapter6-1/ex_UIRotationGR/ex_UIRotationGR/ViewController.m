//
//  ViewController.m
//  ex_UIRotationGR
//
//  Created by yoshiyuki oshige on 2013/08/27.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //回転角度を保存するインスタンス変数
    CGFloat prevRotation;
}

//トンボのプロパティ宣言
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
//ビューを２本指で回転させるアクションと接続するメソッドの宣言
- (IBAction)rotateTombo:(UIRotationGestureRecognizer *)sender;
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

- (IBAction)rotateTombo:(UIRotationGestureRecognizer *)sender {
    if(sender.state == UIGestureRecognizerStateBegan){
        // 前回の続きから回転する
        sender.rotation = prevRotation;
    }else if(sender.state == UIGestureRecognizerStateChanged){
        // 連続して回している間、トンボの角度を合わせる
        _tombo.transform = CGAffineTransformMakeRotation(sender.rotation);
    }else if(sender.state == UIGestureRecognizerStateEnded){
        // 操作終了時の回転角度を記録する
        prevRotation = sender.rotation;
    }
}
@end
