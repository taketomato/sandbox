//
//  ViewController.m
//  ex_UIPanGR-drag_center
//
//  Created by yoshiyuki oshige on 2013/08/27.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//トンボのプロパティ宣言
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
//パン（ドラッグ）アクションのメソッド宣言
- (IBAction)dragging:(UIPanGestureRecognizer *)sender;
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

- (IBAction)dragging:(UIPanGestureRecognizer *)sender {
    // ドラッグ移動したベクトル
    CGPoint translation = [sender translationInView:self.view];
    //tombo の座標をドラッグした量だけ加算する
    CGPoint homeLoc = _tombo.center;
    homeLoc.x += translation.x;
    homeLoc.y += translation.y;
    _tombo.center = homeLoc;
    // ドラッグの開始位置をリセットする
    [sender setTranslation:CGPointZero inView:self.view];
}
@end
