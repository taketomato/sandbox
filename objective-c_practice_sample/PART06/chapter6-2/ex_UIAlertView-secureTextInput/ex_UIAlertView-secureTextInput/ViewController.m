//
//  ViewController.m
//  ex_UIAlertView-secureTextInput
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

// フィールドの状態をチェックしてデフォルトボタンの有効/ 無効を切り替える
- (BOOL)alertViewShouldEnableFirstOtherButton:(UIAlertView *)alertView
{
    // 文字数チェック
    UITextField *fld = [alertView textFieldAtIndex:0];
    if( [fld.text length] >= 6 )
    {
        return YES;// 有効にする
    } else {
        return NO;// 無効にする
    }
}
// アラートの処理
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
