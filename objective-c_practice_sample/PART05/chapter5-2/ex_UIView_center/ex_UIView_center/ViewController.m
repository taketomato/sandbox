//
//  ViewController.m
//  ex_UIView_center
//
//  Created by yoshiyuki oshige on 2013/08/25.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//花をアウトレット接続してプロパティ宣言する
@property (weak, nonatomic) IBOutlet UIImageView *flower;
//ボタンをアクション接続してメソッドを宣言する
- (IBAction)move:(id)sender;
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

//ボタンをタップされたら実行する
- (IBAction)move:(id)sender {
    //花を(200, 100)に移動する
    CGPoint pt = CGPointMake(200, 100);
    _flower.center = pt;
}
@end
