//
//  ViewController.m
//  ex_UIAlertView-3buttons
//
//  Created by yoshiyuki oshige on 2013/08/29.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//ボタンのタップで実行するメソッド
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

// ボタンのタップで実行するメソッド
- (IBAction)tapButton:(id)sender {
    // アラートを作る
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@" 選んでください。"
                                                     message:@" ご予約は?"
                                                    delegate:self
                                           cancelButtonTitle:@" キャンセル"
                                           otherButtonTitles:@"A コース", @"B コース",nil];
    // アラートを表示する
    [alert show];
}

// アラートの処理（デリゲートメソッド）
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0){
        // キャンセルボタン
        NSLog(@" キャンセルされました");
    }else if (buttonIndex == 1){
        // 上から1 番目
        NSLog(@"A コースを選択しました");
    }else if (buttonIndex == 2){
        // 上から2 番目
        NSLog(@"B コースを選択しました");
    }
}

@end
