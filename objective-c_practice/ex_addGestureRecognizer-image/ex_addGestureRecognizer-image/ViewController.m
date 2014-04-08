//
//  ViewController.m
//  ex_addGestureRecognizer-image
//
//  Created by tchiba on 2014/04/08.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *heart;
}
//タップで実行するメソッド
- (void)tapHeart:(UITapGestureRecognizer *)gesture;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //イメージを作る
    UIImage * imageData = [UIImage imageNamed:@"heart.png"];
    CGFloat width = imageData.size.width;
    CGFloat height = imageData.size.height;
    CGRect rect = CGRectMake(0, 0, width, height);
    
    //イメージビューを作る
    heart = [[UIImageView alloc]initWithFrame:rect];
    
    //イメージビューにイメージを設定する
    heart.image = imageData;
    heart.contentMode = UIViewContentModeScaleAspectFit;
    heart.center = CGPointMake(160, 150);
    
    //イメージビューがインタラクティブ操作を受け付けるようにする
    heart.userInteractionEnabled = YES;
    
    //タップジェスチャーを作る
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                                 action:@selector(tapHeart:)];
    
    //イメージビューにタップジェスチャーを設定する
    [heart addGestureRecognizer:tapGesture];
    
    //イメージビューを表示する
    [self.view addSubview:heart];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapHeart:(UITapGestureRecognizer *)gesture
{
    NSLog(@"心をタップされました。");
    self.view.backgroundColor = [UIColor purpleColor];
}

@end
