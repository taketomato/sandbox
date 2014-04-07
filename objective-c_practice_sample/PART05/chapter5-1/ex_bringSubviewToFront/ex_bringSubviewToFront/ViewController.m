//
//  ViewController.m
//  ex_bringSubviewToFront
//
//  Created by yoshiyuki oshige on 2013/08/20.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//写真をアクション接続してプロパティ名を付ける
@property (weak, nonatomic) IBOutlet UIImageView *photo1;
@property (weak, nonatomic) IBOutlet UIImageView *photo2;
@property (weak, nonatomic) IBOutlet UIImageView *photo3;

//セグメントコントロールをアクション接続してメソッドを宣言する
- (IBAction)selectPhoto:(UISegmentedControl *)sender;
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

// セグメントコントロールの値が変化したら実行される
- (IBAction)selectPhoto:(UISegmentedControl *)sender {
   //インデックス番号で示されたビューを最前面に移動する
    switch (sender.selectedSegmentIndex) {
        case 0:
            [self.view bringSubviewToFront:_photo1];
            break;
        case 1:
            [self.view bringSubviewToFront:_photo2];
            break;
        case 2:
            [self.view bringSubviewToFront:_photo3];
            break;
    }
}
@end
