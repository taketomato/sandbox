//
//  ColorBkgButton.h
//  ex_UIButton_ColorBkgButton
//
//  Created by tchiba on 2014/04/07.
//  Copyright (c) 2014年 taketomato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorBkgButton : UIButton
//イニシャライザを宣言する
- (id)initWithFrame:(CGRect)frame label:(NSString *)title bkgcolor:(UIColor *)rgba;
@end
