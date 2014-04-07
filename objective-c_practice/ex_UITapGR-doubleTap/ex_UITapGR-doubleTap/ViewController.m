//
//  ViewController.m
//  ex_UITapGR-doubleTap
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)doubleTapFlower:(UITapGestureRecognizer *)sender;

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

- (IBAction)doubleTapFlower:(UITapGestureRecognizer *)sender {
    //タップ対象のイメージビューを取得(データ型をUIImageViewにキャストしておく)
    UIImageView *flower = (UIImageView *)sender.view;
    //アフィン変換が適用済みかどうかを判断する
    if(CGAffineTransformIsIdentity(sender.view.transform)){
        //中心で3倍に拡大
        flower.transform = CGAffineTransformMakeScale(3.0, 3.0);
    }
    else{
        //アフィン変換前に戻す
        flower.transform = CGAffineTransformIdentity;
    }
}
@end
