//
//  ViewController.m
//  ex_addGestureRecognizer-singleTapDoubletap
//
//  Created by tchiba on 2014/04/08.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (void)singleTap:(UITapGestureRecognizer *)gesture;
- (void)doubleTap:(UITapGestureRecognizer *)gesture;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //----シングルタップジェスチャーを作る----
    UITapGestureRecognizer * singleTapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                                       action:@selector(singleTap:)];
    //シングルタップを認識する設定にする
    singleTapGesture.numberOfTapsRequired = 1;
    //イメージビューにシングルタップジェスチャーを設定する
    [self.view addGestureRecognizer:singleTapGesture];
    
    //----ダブルタップジェスチャーを作る----
    UITapGestureRecognizer * doubleTapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                                       action:@selector(doubleTap:)];
    //ダブルタップを認識する設定にする
    doubleTapGesture.numberOfTapsRequired = 2;
    //イメージビューにダブルタップジェスチャーを設定する
    [self.view addGestureRecognizer:doubleTapGesture];
    
    //----シングルタップは、ダブルタップが認識されなかったときに実行する
    [singleTapGesture requireGestureRecognizerToFail:doubleTapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)singleTap:(UITapGestureRecognizer *)gesture
{
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)doubleTap:(UITapGestureRecognizer *)gesture
{
    self.view.backgroundColor = [UIColor redColor];
}
@end
