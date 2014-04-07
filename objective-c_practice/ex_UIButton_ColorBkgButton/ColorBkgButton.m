//
//  ColorBkgButton.m
//  ex_UIButton_ColorBkgButton
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import "ColorBkgButton.h"

@implementation ColorBkgButton

//デフォルトのイニシャライザ
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }    return self;
}

//背景とタイトルを設定できるイニシャライザ
- (id)initWithFrame:(CGRect)frame label:(NSString *)title bkgcolor:(UIColor *)rgba
{
    self = [super initWithFrame:frame];
    if(self){
        //Initialization code
        //背景色
        self.backgroundColor = rgba;
        //輪郭線を描く
        [self.layer setCornerRadius:10.0];
        [self.layer setBorderColor:[UIColor lightGrayColor].CGColor];
        [self.layer setBorderWidth:1.0];
        //タイトルの設定
        self.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        [self setTitle:title forState:UIControlStateNormal];
        //タイトルの色
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //ボタン押下時のタイトルの色
        [self setTitleColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
        //タイトルシャドウの設定
        [self setTitleShadowColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        self.titleLabel.shadowOffset = CGSizeMake(1, 1);
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
