//
//  ViewController.m
//  ex_UITapGR-image
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
- (IBAction)tapTombo:(UITapGestureRecognizer *)sender;

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

- (IBAction)tapTombo:(UITapGestureRecognizer *)sender {
    //tomboの縦横サイズ
    CGFloat tomboWidth = _tombo.bounds.size.width;
    CGFloat tomboHeight = _tombo.bounds.size.height;
    
    //移動可能な領域のサイズ
    NSInteger w = floor(self.view.bounds.size.width - tomboWidth);
    NSInteger h = floor(self.view.bounds.size.height - tomboHeight);
    
    //画面上のランダムな座標(トンボの中心位置の分だけオフセットする)
    CGFloat x = (arc4random() % w) + tomboWidth/2;
    CGFloat y = (arc4random() % h) + tomboHeight/2;
    
    //トンボを移動する
    _tombo.center = CGPointMake(x, y);
}
@end
