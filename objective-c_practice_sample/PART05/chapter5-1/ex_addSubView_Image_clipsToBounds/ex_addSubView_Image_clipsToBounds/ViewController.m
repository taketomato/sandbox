//
//  ViewController.m
//  ex_addSubView_Image_clipsToBounds
//
//  Created by yoshiyuki oshige on 2013/08/19.
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
    CGRect rect = CGRectMake(0, 0, 100, 100);
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:rect];
    //背景色を赤にする
    imageView.backgroundColor = [UIColor redColor];
   
    //3. イメージビューにイメージを設定する
    imageView.image = imageData;
    imageView.contentMode = UIViewContentModeTopLeft;
    // はみ出ている部分をクリッピングする
    imageView.clipsToBounds = YES;
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
