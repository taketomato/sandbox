//
//  ViewController.m
//  ChoiceFood
//
//  Created by tchiba on 2014/04/04.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ViewController.h"
#import "Food.h"

@interface ViewController (){
    Food *foodObj;
    NSString *theFood;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    foodObj = [[Food alloc]initWithFoods:@[@"カレー", @"焼き肉", @"寿司", @"ラーメン"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doChoice:(id)sender {
    if( foodObj.counter < 3){
        theFood = [foodObj choiceFood];
        _answerLabel.text = [NSString stringWithFormat:@"%@でどうでしょう？", theFood];
    }
    else{
        _answerLabel.text = [NSString stringWithFormat:@"もう、%@に決定！", theFood];
    }
}
@end
