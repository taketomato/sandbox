//
//  ViewController.m
//  ex_convertPoint
//
//  Created by yoshiyuki oshige on 2013/08/25.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//ビューとアウトレット接続してあるプロパティ
@property (weak, nonatomic) IBOutlet UIImageView *ring;
@property (weak, nonatomic) IBOutlet UIView *field;
@property (weak, nonatomic) IBOutlet UIImageView *tombo;

//ボタンとアクション接続しているメソッド宣言
- (IBAction)catchTombo:(id)sender;
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

//トンボをつかまえる
- (IBAction)catchTombo:(id)sender {
    //tomboの座標をグローバル座標（ビューの座標）に変換する
    CGPoint pt = [self.view convertPoint:_tombo.center fromView:_field];
    //リングをトンボのグローバル座標に移動する
    _ring.center = pt;
}
@end
