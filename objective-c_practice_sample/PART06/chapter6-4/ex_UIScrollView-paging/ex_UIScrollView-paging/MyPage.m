//
//  MyPage.m
//  ex_UIScrollView-paging
//
//  Created by yoshiyuki oshige on 2013/08/31.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "MyPage.h"

@implementation MyPage

//イニシャライザ
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

//カスタムイニシャライザ
-(id)initWithImageName:(NSString *)imageName frame:(CGRect)frame caption:(NSString *)caption
{
    //イニシャライザで初期化済みのインスタンスを取得する
    self = [self initWithFrame:frame];
    
    int labelH = 25;//ラベルの高さ
    //絵を表示したイメージビューを作成する
    CGRect imageFrame = CGRectMake(0, 0, frame.size.width, frame.size.height-labelH);
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:imageFrame];
    imageView.image = [UIImage imageNamed:imageName];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    //キャプションの入ったラベルを作成する
    UILabel *myLabel = [[UILabel alloc] init];
    myLabel.text =caption;
    myLabel.frame = CGRectMake(0, frame.size.height-labelH, frame.size.width, labelH);
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.font = [UIFont systemFontOfSize:14];
    
    //イメージビューとラベルをサブビューとして追加する
    [self addSubview:imageView];
    [self addSubview:myLabel];
    
    //できあがったページを返す
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
