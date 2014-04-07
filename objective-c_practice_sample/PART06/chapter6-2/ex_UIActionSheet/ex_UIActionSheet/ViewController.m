//
//  ViewController.m
//  ex_UIActionSheet
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

// アクションシートをテストする
- (IBAction)tapButton:(id)sender {
    UIActionSheet * sheet = [[UIActionSheet alloc] initWithTitle:@" コースを選んでください。"
                                                        delegate:self
                                               cancelButtonTitle:@" キャンセル"
                                          destructiveButtonTitle:nil
                                               otherButtonTitles:@"Aコース", @"Bコース", @"Cコース", nil];
    // アクションシートを表示する
    [sheet showInView:self.view];
}
// アクションシートでボタンを選ぶと実行される
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    // 選んだボタンのindex 番号とボタンタイトルを出力する
    NSLog(@"index %d %@", buttonIndex, [actionSheet buttonTitleAtIndex:buttonIndex]);
}

@end
