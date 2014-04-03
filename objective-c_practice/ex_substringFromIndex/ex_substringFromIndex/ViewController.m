//
//  ViewController.m
//  ex_substringFromIndex
//
//  Created by tchiba on 2014/04/03.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *address1 = @"神奈川県藤沢市鵠沼1-2-3";
    NSLog(@"FromIndex %@", [address1 substringFromIndex:7]);
    NSLog(@"toIndex %@", [address1 substringToIndex:4]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
