//
//  ViewController.m
//  ex_UIAlertView-OK
//
//  Created by yoshiyuki oshige on 2013/08/29.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//ボタンとアクション接続するメソッド
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
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@" 確認"
                                                     message:@" 実行します"
                                                    delegate:self
                                           cancelButtonTitle:@" キャンセル"
                                           otherButtonTitles:@"OK",nil];
    // アラートを表示する
    [alert show];
}

// アラートのボタンがタップされた場合の処理（デリゲートメソッド）
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0){
        // キャンセルボタン
        NSLog(@" キャンセルされました");
    }else if (buttonIndex == 1){
        //OK ボタン
        NSLog(@"OK を選択しました");
    }
}

@end
