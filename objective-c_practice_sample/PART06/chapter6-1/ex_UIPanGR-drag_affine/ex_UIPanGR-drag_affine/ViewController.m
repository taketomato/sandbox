//
//  ViewController.m
//  ex_UIPanGR-drag_affine
//
//  Created by yoshiyuki oshige on 2013/11/07.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //移動ベクトルを保存
    CGPoint prevTranslation;
}
//トンボのプロパティ宣言
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
//パン（ドラッグ）アクションと接続するメソッドの宣言
- (IBAction)dragging:(UIPanGestureRecognizer *)sender;

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

//ドラッグ中に連続して呼び出されるメソッド
- (IBAction)dragging:(UIPanGestureRecognizer *)sender {
    //ドラッグ移動したベクトル
    CGPoint translation = [sender translationInView:self.view];
    if(sender.state == UIGestureRecognizerStateBegan){
        //前回の続きから開始する
        [sender setTranslation:prevTranslation inView:self.view];
    } else if(sender.state == UIGestureRecognizerStateChanged){
        //ドラッグに合わせて移動させる
        _tombo.transform = CGAffineTransformMakeTranslation(translation.x, translation.y);
    } else if(sender.state == UIGestureRecognizerStateEnded){
        //ドラッグ操作終了時の移動ベクトルを保存する
        prevTranslation = translation;
    }
}

@end
