//
//  ViewController.m
//  ex_UIView_center-move
//
//  Created by yoshiyuki oshige on 2013/08/25.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *car;
- (IBAction)move:(id)sender;
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

//車を右へ移動させる
- (IBAction)move:(id)sender {
    CGPoint pt = _car.center;
    pt.x += 10;
    _car.center = pt;
}
@end
