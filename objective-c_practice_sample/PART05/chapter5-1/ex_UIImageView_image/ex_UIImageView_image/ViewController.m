//
//  ViewController.m
//  ex_UIImageView_image
//
//  Created by yoshiyuki oshige on 2013/08/19.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    //画像データを保存する変数
    UIImage *imageData;
}
//スイッチとアクション接続する
- (IBAction)switchChange:(UISwitch *)sender;
//イメージビューとアウトレット接続する
@property (weak, nonatomic) IBOutlet UIImageView *imageHolder;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // イメージデータを作る
    imageData = [UIImage imageNamed:@"surfshop.jpg"];
    //縦横の比率を保って伸縮する
    _imageHolder.contentMode = UIViewContentModeScaleAspectFit;
    //背景色をライトグレイにする
    _imageHolder.backgroundColor = [UIColor lightGrayColor];
    //写真データを設定する
    _imageHolder.image = imageData;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// スイッチボタンのON/OFF でイメージを設定する
- (IBAction)switchChange:(UISwitch *)sender {
    if(sender.on == YES)
    {
        //写真データを設定する
        _imageHolder.image = imageData;
    }else{
        //写真データを解除する
        _imageHolder.image = nil;
    }
}
@end
