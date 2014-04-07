//
//  ViewController.m
//  ex_addGestureRecognizer-singleTapDoubleTap
//
//  Created by yoshiyuki oshige on 2013/08/28.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// タップジェスチャーで実行するメソッド
- (void) singleTap:(UITapGestureRecognizer *)gesture;
- (void) doubleTap:(UITapGestureRecognizer *)gesture;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//----- シングルタップジェスチャーを作る -----
    UITapGestureRecognizer * singleTapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTap:)];
    // シングルタップを認識する設定にする
    singleTapGesture.numberOfTapsRequired = 1;
    // イメージビューにシングルタップジェスチャーを設定する
    [self.view addGestureRecognizer:singleTapGesture];
    //----- ダブルタップジェスチャーを作る -----
    UITapGestureRecognizer * doubleTapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap:)];
    // ダブルタップを認識する設定にする
    doubleTapGesture.numberOfTapsRequired = 2;
    // イメージビューにダブルタップジェスチャーを設定する
    [self.view addGestureRecognizer:doubleTapGesture];
    //----- シングルタップは、ダブルタップが認識されなかったときに実行する
    [singleTapGesture requireGestureRecognizerToFail:doubleTapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// シングルタップで実行するメソッド
- (void) singleTap:(UITapGestureRecognizer *)gesture
{
    self.view.backgroundColor = [UIColor whiteColor];
}
// ダブルタップで実行するメソッド
- (void) doubleTap:(UITapGestureRecognizer *)gesture
{
    self.view.backgroundColor = [UIColor redColor];
}

@end
