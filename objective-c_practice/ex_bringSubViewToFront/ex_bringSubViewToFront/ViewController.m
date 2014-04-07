//
//  ViewController.m
//  ex_bringSubViewToFront
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *photo01;
@property (weak, nonatomic) IBOutlet UIImageView *photo02;
@property (weak, nonatomic) IBOutlet UIImageView *photo03;
- (IBAction)selectPhoto:(UISegmentedControl *)sender;

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

- (IBAction)selectPhoto:(UISegmentedControl *)sender {
    switch(sender.selectedSegmentIndex){
        case 0:
            [self.view bringSubviewToFront:_photo01];
            break;
        case 1:
            [self.view bringSubviewToFront:_photo02];
            break;
        case 2:
            [self.view bringSubviewToFront:_photo03];
            break;
    }
}
@end
