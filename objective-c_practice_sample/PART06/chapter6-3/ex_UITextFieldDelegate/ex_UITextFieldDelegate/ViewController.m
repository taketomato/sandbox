//
//  ViewController.m
//  ex_UITextFieldDelegate
//
//  Created by yoshiyuki oshige on 2013/08/29.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//入力イベントをデリゲートするテキストフィールド
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 入力イベントを処理するテキストフィールドのデリゲートになる
    _myTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//return キーがタップされた
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // キーボードを引っ込める
    [self.view endEditing:YES];
    // 改行コードを入力しない
    return NO;
}

@end
