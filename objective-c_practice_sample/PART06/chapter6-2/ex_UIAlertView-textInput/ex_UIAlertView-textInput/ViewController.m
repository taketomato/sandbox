//
//  ViewController.m
//  ex_UIAlertView-textInput
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
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@" パスワードを入れてください"
                                                   message:@" 英数6 文字以上です"
                                                  delegate:self
                                         cancelButtonTitle:@" キャンセル"
                                         otherButtonTitles:@"OK",nil];
    // 伏せ文字の入力フィールドを表示するスタイル
    alert.alertViewStyle = UIAlertViewStyleSecureTextInput;
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
        //OK ボタン
        UITextField *fld = [alertView textFieldAtIndex:0];
        NSLog(@"%@ と入力されました。", fld.text);
    }
}

@end

