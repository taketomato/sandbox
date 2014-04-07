//
//  ViewController.m
//  ex_addSubView_Image
//
//  Created by yoshiyuki oshige on 2013/08/18.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //1. イメージを作る
    UIImage * imageData = [UIImage imageNamed:@"flower.png"];
    //2. イメージビューを作る
    CGRect rect = CGRectMake(0, 0, 200, 200);
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:rect];
    //3. イメージビューにイメージを設定する
    imageView.image = imageData;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    // 表示座標を決める
    imageView.center = self.view.center;
    //4. イメージビューをビューに追加する
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
