//
//  ViewController.m
//  ex_UIAlertView-3buttons
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
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"選んでください"
                                                    message:@"ご予約は？"
                                                   delegate:self
                                          cancelButtonTitle:@"キャンセル"
                                          otherButtonTitles:@"Aコース",@"Bコース", nil];
    //アラートを表示する
    [alert show];
}

//アラートの処理(デリゲートメソッド)
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0){
        //キャンセルボタン
        NSLog(@"キャンセルされました");
    }
    else if(buttonIndex == 1){
        //上から1番目
        NSLog(@"Aコースを選択しました");
    }
    else if(buttonIndex == 2){
        //上から2番目
        NSLog(@"Bコースを選択しました");
    }
}

@end
