//
//  ViewController.m
//  ex_UIAlertView-OK
//
//  Created by tchiba on 2014/04/08.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)tapButton:(id)sender;
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

- (IBAction)tapButton:(id)sender
{
    //アラートを作る
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"確認"
                                                    message:@"実行します"
                                                   delegate:self
                                          cancelButtonTitle:@"キャンセル"
                                          otherButtonTitles:@"OK", nil];
    //アラートを表示する
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0){
        //キャンセルボタン
        NSLog(@"キャンセルされました");
    }
    else if(buttonIndex == 1){
        //OKボタン
        NSLog(@"OKを選択しました");
    }
}

@end
