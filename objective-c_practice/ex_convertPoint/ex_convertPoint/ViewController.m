//
//  ViewController.m
//  ex_convertPoint
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ring;
@property (weak, nonatomic) IBOutlet UIView *field;
@property (weak, nonatomic) IBOutlet UIImageView *tombo;
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

- (IBAction)catchTombo:(id)sender {
    CGPoint pt = [self.view convertPoint:_tombo.center fromView:_field];
    _ring.center = pt;
}
@end
