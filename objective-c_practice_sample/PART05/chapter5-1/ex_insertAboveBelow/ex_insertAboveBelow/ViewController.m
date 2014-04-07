//
//  ViewController.m
//  ex_insertAboveBelow
//
//  Created by yoshiyuki oshige on 2013/08/20.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//イメージビューの名前をプロパティ宣言する
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UIImageView *sakura;

//セグメントコントロールのアクションをメソッド宣言する
- (IBAction)valueChanged:(UISegmentedControl *)sender;
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

// セグメントコントロールで写真の重なりを変更する
- (IBAction)valueChanged:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            // 写真の重なりを桜の下にする
            [self.view insertSubview:_photo belowSubview:_sakura];
            break;
        case 1:
            // 写真の重なりを桜の上にする
            [self.view insertSubview:_photo aboveSubview:_sakura];
            break;
    }
}
@end
