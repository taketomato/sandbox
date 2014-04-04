//
//  ViewController.m
//  ex_MyClass
//
//  Created by tchiba on 2014/04/04.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *msgTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MyClass *myObj = [[MyClass alloc]init];
    myObj.where = @"大分";
    NSString * myMessage = [myObj hello:@"小野"];
    _msgTextField.text = myMessage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
