//
//  ViewController.m
//  ex_insertSubview-2
//
//  Created by yoshiyuki oshige on 2013/08/20.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//一番下の写真をアウトレット接続する
@property (weak, nonatomic) IBOutlet UIImageView *dai;
//ステッパーとアクション接続する
- (IBAction)valueChanged:(UIStepper *)sender;
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

// 写真daiのインデックス番号をステッパーの値に変更する
- (IBAction)valueChanged:(UIStepper *)sender {
    [self.view insertSubview:_dai atIndex:sender.value];
}
@end
