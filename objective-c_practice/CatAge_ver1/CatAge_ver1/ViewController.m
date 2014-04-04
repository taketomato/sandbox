//
//  ViewController.m
//  CatAge_ver1
//
//  Created by tchiba on 2014/04/04.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *catField;
@property (weak, nonatomic) IBOutlet UILabel *humanLabel;
- (IBAction)calc:(id)sender;
- (double) catAgeToHumanAge:(double)catAge;
- (IBAction)bkgTapped:(id)sender;

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

- (IBAction)calc:(id)sender {
    double catAge = [_catField.text doubleValue];
    double humanAge = [self catAgeToHumanAge:catAge];
    NSString *ans = [NSString stringWithFormat:@"%.1f歳", humanAge];
    _humanLabel.text = ans;
}

- (double)catAgeToHumanAge:(double)catAge
{
    double age;
    if(catAge<=1){
        age = 20*catAge;
    }
    else if(catAge<=5){
        age = catAge*6+15;
    }
    else if(catAge<=10){
        age = catAge*5+20;
    }
    else
        age = 100;
    return age;
}

- (IBAction)bkgTapped:(id)sender {
    [self.view endEditing:YES];
}

- (BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    //変更前のテキストを取得
    NSMutableString *tmp = [_catField.text mutableCopy];
    //編集後のテキストを作る
    [tmp replaceCharactersInRange:range withString:string];
    //100歳以下である
    BOOL isAgeLimit = [tmp doubleValue] <= 100;
    //4文字以下である
    BOOL isLengthLimit = [tmp length] <= 4;
    return isAgeLimit && isLengthLimit;
}

@end
