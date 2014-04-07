//
//  ColorBkgButton.h
//  ex_UIButton_ColorBkgButton
//
//  Created by yoshiyuki oshige on 2013/08/26.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorBkgButton : UIButton
//イニシャライザを宣言する
- (id)initWithFrame:(CGRect)frame label:(NSString *)title bkgcolor:(UIColor *)rgba;
@end
