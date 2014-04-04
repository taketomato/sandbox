//
//  ViewController.m
//  ex_removeFromSuperView
//
//  Created by tchiba on 2014/04/04.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)removeAddLabel:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *myLabel;

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

- (IBAction)removeAddLabel:(id)sender {
    if([_myLabel isDescendantOfView:self.view]){
        [_myLabel removeFromSuperview];
    }
    else{
        [self.view addSubview:_myLabel];
    }
}
@end
