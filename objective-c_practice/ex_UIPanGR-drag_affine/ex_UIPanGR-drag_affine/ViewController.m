//
//  ViewController.m
//  ex_UIPanGR-drag_affine
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //移動ベクトルを保存
    CGPoint prevTranslation;
}
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
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

- (IBAction)dragging:(UIPanGestureRecognizer *)sender {
    //ドラッグ移動したベクトル
    CGPoint translation = [sender translationInView:self.view];
    if(sender.state == UIGestureRecognizerStateBegan){
        //前回の続きから開始する
        [sender setTranslation:prevTranslation inView:self.view];
    }
    else if(sender.state == UIGestureRecognizerStateChanged){
        //ドラッグにあわせて移動させる
        _tombo.transform = CGAffineTransformMakeTranslation(translation.x, translation.y);
    }
    else if(sender.state == UIGestureRecognizerStateEnded){
        //ドラッグ操作終了時の移動ベクトルを保存する
        prevTranslation = translation;
    }
}
@end
