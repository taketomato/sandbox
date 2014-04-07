//
//  ViewController.m
//  ex_UITapGR-view
//
//  Created by yoshiyuki oshige on 2013/08/27.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//トンボのプロパティ宣言
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
//ビューのタップと接続するメソッド宣言
- (IBAction)tapView:(UITapGestureRecognizer *)sender;
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

//ビューがタップされたら実行するメソッド
- (IBAction)tapView:(UITapGestureRecognizer *)sender {
    //タップされた座標
    CGPoint tapLoc = [sender locationInView:self.view];
    //タップされた座標にトンボを移動する
    _tombo.center = tapLoc;
    NSLog(@"loc %f, %f", tapLoc.x, tapLoc.y);
}
@end
