//
//  ViewController.m
//  ex_addSubView_Image
//
//  Created by tchiba on 2014/04/04.
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
    
    UIImage * imageData = [UIImage imageNamed:@"origin13330787586763.jpg"];
    
    CGRect rect = CGRectMake(0, 0, 100, 100);
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:rect];
    imageView.backgroundColor = [UIColor redColor];
    
    imageView.image = imageData;
    imageView.contentMode = UIViewContentModeTopLeft;
    imageView.ClipsToBounds = YES;
    
    imageView.center = self.view.center;
    
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
