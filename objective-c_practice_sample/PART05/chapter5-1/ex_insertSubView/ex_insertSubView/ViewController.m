//
//  ViewController.m
//  ex_insertSubView
//
//  Created by yoshiyuki oshige on 2013/08/20.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    // 家のイメージビュー
    UIImageView *house;
}

//絵が置かれているビュー
@property (weak, nonatomic) IBOutlet UIView *field;
//ボタンのアクションメソッド
- (IBAction)insertHouse:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // イメージを作る
    UIImage * imageData = [UIImage imageNamed:@"house.png"];
    CGFloat width = imageData.size.width;
    CGFloat height = imageData.size.height;
    CGRect rect = CGRectMake(0, 0, width, height);
    // イメージビューを作る
    house = [[UIImageView alloc] initWithFrame:rect];
    // イメージビューにイメージを設定する
    house.image = imageData;
    house.contentMode = UIViewContentModeTopLeft;
    house.center = CGPointMake(68+width/2, 67+height/2);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 家のイメージビューをfield に追加する
- (IBAction)insertHouse:(id)sender {
    // インデックス番号1( 下から2 番目）に挿入する
    [_field insertSubview:house atIndex:1];
}
@end
