//
//  ViewController.m
//  ex_UIView_frame
//
//  Created by yoshiyuki oshige on 2013/08/25.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//写真とアウトレット接続する
@property (weak, nonatomic) IBOutlet UIImageView *photo;
//ボタンとアクション接続する
- (IBAction)reFrame:(id)sender;
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

//写真の領域（座標、縦横サイズ）を変更する
- (IBAction)reFrame:(id)sender {
    CGRect rect = CGRectMake(10, 80, 256, 192);
    _photo.frame = rect;
}
@end
