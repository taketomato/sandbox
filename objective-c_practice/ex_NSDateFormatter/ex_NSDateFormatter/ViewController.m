//
//  ViewController.m
//  ex_NSDateFormatter
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
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    [formatter setLocale:[NSLocale systemLocale]];
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    NSDate *theDay = [formatter dateFromString:@"2013/09/01 15:00:00"];
    
    NSLocale *locale = [NSLocale currentLocale];
    NSLog(@"その日は %@", [theDay descriptionWithLocale:locale]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
