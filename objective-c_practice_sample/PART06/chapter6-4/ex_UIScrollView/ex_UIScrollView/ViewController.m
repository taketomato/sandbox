//
//  ViewController.m
//  ex_UIScrollView
//
//  Created by yoshiyuki oshige on 2013/08/30.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//スクロールビュー
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
//イメージビュー
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
// 拡大する領域を求めるメソッド
- (CGRect)zoomRectForScale:(float)scale withCenter:(CGPoint)center;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // スクロールビューのデリゲート先になる
    _myScrollView.delegate = self;
    // ズームの最小値/ 最大値を設定する
    _myScrollView.minimumZoomScale = 1;
    _myScrollView.maximumZoomScale = 8;
    // スクローラを表示する
    _myScrollView.scrollEnabled = YES;
    _myScrollView.showsHorizontalScrollIndicator = YES;
    _myScrollView.showsVerticalScrollIndicator = YES;
    // ダブルタップジェスチャーを作る
    UITapGestureRecognizer * doubleTapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap:)];
    // ダブルタップを認識する設定にする
    doubleTapGesture.numberOfTapsRequired = 2;
    // イメージビューにダブルタップジェスチャーを設定する
    _myImageView.userInteractionEnabled = YES;
    [_myImageView addGestureRecognizer:doubleTapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 拡大写真をピンチイン/ピンチアウトできるようにする
-(UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _myImageView;
}
// 写真がダブルタップされたならば拡大/ 縮小する
- (void)doubleTap:(UITapGestureRecognizer *)gesture {
    // 最大倍率でなければ拡大する
    if(_myScrollView.zoomScale<_myScrollView.maximumZoomScale)
    {
        // 現在の3 倍の倍率にする
        float newScale = _myScrollView.zoomScale * 3;
        // 拡大する領域を求める
        CGRect zoomRect =
        [self zoomRectForScale:newScale withCenter:[gesture locationInView:gesture.view]];
        // タップした位置を拡大する
        [_myScrollView zoomToRect:zoomRect animated:YES];
    } else {
        // 倍率1 に戻す
        [_myScrollView setZoomScale:1.0 animated:YES];
    }
}

// 指定の座標を中心にして拡大する領域を求める
- (CGRect)zoomRectForScale:(float)scale withCenter:(CGPoint)center {
    CGRect zoomRect;
    // 倍率から拡大する縦横サイズを求める
    zoomRect.size.height = [_myScrollView frame].size.height / scale;
    zoomRect.size.width = [_myScrollView frame].size.width / scale;
    // 座標（左上）を設定する
    zoomRect.origin.x = center.x - (zoomRect.size.width / 2.0);
    zoomRect.origin.y = center.y - (zoomRect.size.height / 2.0);
    // 領域を返す
    return zoomRect;
}

@end
