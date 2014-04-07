//
//  ViewController.m
//  ex_UIImageVew_image
//
//  Created by tchiba on 2014/04/04.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImage * imageData;
    UIImageView * tomato;
}
- (IBAction)switchChange:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UIView *field;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //イメージデータを作る
    imageData = [UIImage imageNamed:@"origin13330787586763.jpg"];
    CGRect rect = CGRectMake(0,0, 200, 200);
    tomato = [[UIImageView alloc] initWithFrame:rect];
    
    //イメージビューにイメージを設定する
    tomato.image = imageData;
    tomato.contentMode = UIViewContentModeTopLeft;
    tomato.center = CGPointMake(68+100, 67+100);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchChange:(UISwitch *)sender {
    [_field insertSubview:tomato atIndex:2];
}
@end
