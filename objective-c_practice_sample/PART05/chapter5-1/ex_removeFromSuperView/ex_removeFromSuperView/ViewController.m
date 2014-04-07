//
//  ViewController.m
//  ex_removeFromSuperView
//
//  Created by yoshiyuki oshige on 2013/08/17.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//ラベルの削除と追加
- (IBAction)removeAddLabel:(id)sender;
//操作対象のラベル
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
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

//ラベルをビューから取り除いたり、追加したりする
- (IBAction)removeAddLabel:(id)sender {
    //_myLabel がビューのサブビューであるかどうか
    if([_myLabel isDescendantOfView:self.view]){
        // ビューから取り除く
        [_myLabel removeFromSuperview];
    } else {
        // ビューに追加する
        [self.view addSubview:_myLabel];
    }
}

@end
