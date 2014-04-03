//
//  ViewController.m
//  ex_NSDate_compare
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
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy/MM/dd"];
    NSDate *date1 = [df dateFromString:@"2013/04/30"];
    NSDate *date3 = [df dateFromString:@"2013/07/03"];
    NSComparisonResult result = [date1 compare:date3];
    
    switch (result) {
        case NSOrderedAscending:
            NSLog(@"date1のほうが古い");
            break;
        case NSOrderedDescending:
            NSLog(@"date1のほうが新しい");
            break;
        case NSOrderedSame:
            NSLog(@"同じ日");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
