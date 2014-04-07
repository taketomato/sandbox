//
//  ViewController.m
//  ex_UIImageView_hidden
//
//  Created by yoshiyuki oshige on 2013/08/19.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//スイッチとアクション接続する
- (IBAction)switchChange:(UISwitch *)sender;
//写真とアウトレット接続する
@property (weak, nonatomic) IBOutlet UIImageView *photo;
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

//スイッチの切り替えで実行する
- (IBAction)switchChange:(UISwitch *)sender {
    // スイッチのYES/NO と逆の設定にする
    _photo.hidden = !(sender.on);
}
@end
