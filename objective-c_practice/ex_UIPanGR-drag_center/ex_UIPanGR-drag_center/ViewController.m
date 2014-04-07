//
//  ViewController.m
//  ex_UIPanGR-drag_center
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
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

- (IBAction)dragging:(UIPanGestureRecognizer *)sender
{
    //ドラッグ移動したベクトル
    CGPoint translation = [sender translationInView:self.view];
    //tomboの座標をドラッグした量だけ加算する
    CGPoint homeLoc = _tombo.center;
    homeLoc.x += translation.x;
    homeLoc.y += translation.y;
    _tombo.center = homeLoc;
    //ドラッグの開始位置をリセットする
    [sender setTranslation:CGPointZero inView:self.view];
}
@end
