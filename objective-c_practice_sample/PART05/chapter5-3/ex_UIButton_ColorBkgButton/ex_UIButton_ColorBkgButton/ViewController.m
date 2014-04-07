//
//  ViewController.m
//  ex_UIButton_ColorBkgButton
//
//  Created by yoshiyuki oshige on 2013/08/26.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"
//ColorBkgButtonクラスをインポートする
#import "ColorBkgButton.h"
//RGBA カラーを作る関数を定義
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // カラーボタンを作る
    ColorBkgButton *button1 = [[ColorBkgButton alloc] initWithFrame:CGRectMake(50, 50, 120, 30)
                                                              label:@"Hello World!"
                                                           bkgcolor:RGBA(200, 200, 50, 1.0)];
    ColorBkgButton *button2 = [[ColorBkgButton alloc] initWithFrame:CGRectMake(50, 100, 100, 30)
                                                              label:@" いいね!"
                                                           bkgcolor:RGBA(50, 100, 150, 1.0)];
    // ボタンをビューに追加する
    [self.view addSubview:button1];
    [self.view addSubview:button2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
