//
//  ViewController.m
//  ex_UIScrollView-paging
//
//  Created by yoshiyuki oshige on 2013/08/31.
//  Copyright (c) 2013年 yoshiyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//スクロールビュー
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
//ページコントロール
@property (weak, nonatomic) IBOutlet UIPageControl *myPageControl;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //ページデータ（辞書オブジェクト）の配列を作る
    NSMutableArray *pages = [NSMutableArray array];
    [pages addObject:@{@"imageName":@"tree.png", @"caption":@"名前もない木"}];
    [pages addObject:@{@"imageName":@"house.png", @"caption":@"赤い壁の家"}];
    [pages addObject:@{@"imageName":@"flower.png", @"caption":@"桜の花"}];
    [pages addObject:@{@"imageName":@"car.png", @"caption":@"青いトラック"}];
    
    //ページコントロール（ドット）の設定
    _myPageControl.numberOfPages = pages.count;
    _myPageControl.currentPage = 0;
    //ドットの色
    _myPageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    _myPageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    
    //スクロールビューのデリゲートの設定
    _myScrollView.delegate = self;
    //スクロールビューの各種設定
    _myScrollView.scrollEnabled = YES; //スクロールできる
    _myScrollView.pagingEnabled = YES; //ページでスクロールする
    _myScrollView.showsHorizontalScrollIndicator = NO; //横スクローラを表示しない
    _myScrollView.showsVerticalScrollIndicator = NO; //縦スクローラを表示しない
    _myScrollView.backgroundColor = [UIColor colorWithRed:0.95  //背景色
                                                    green:0.95
                                                     blue:0.7
                                                    alpha:1.0];
    
    //1ページのフレームサイズ
    CGRect aFrame =  _myScrollView.frame;
    //スクロールするコンテンツの縦横サイズ
    _myScrollView.contentSize = CGSizeMake(aFrame.size.width * pages.count,
                                           aFrame.size.height);
    
    //コンテンツを作る
    for(int i=0; i<pages.count ;i++)
    {
        //1ページ分の情報を取り出す
        NSDictionary *pageDic = pages[i];
        NSString *imageName = pageDic[@"imageName"];
        NSString *caption = pageDic[@"caption"];
        //x座標の基準点をページ数だけずらす
        CGRect pageFrame;
        pageFrame.origin.x = aFrame.size.width * i;
        pageFrame.origin.y = 0;
        pageFrame.size = aFrame.size;
        //MyPageクラスで１ページ分のコンテンツ（サブビュー）を作る
        MyPage *aMyPage = [[MyPage alloc]initWithImageName:(NSString *)imageName
                                                     frame:(CGRect)pageFrame
                                                   caption:(NSString *)caption];
        //スクロールビューにページを追加する
        [_myScrollView addSubview:aMyPage];
    }
}

//スクロールのデリゲートメソッド
- (void)scrollViewDidScroll:(UIScrollView *) sender
{
    //現在のページ番号を調べる
    CGFloat pageWidth = _myScrollView.frame.size.width;
    int pageNo = floor((_myScrollView.contentOffset.x - pageWidth/2)/pageWidth)+1;
    _myPageControl.currentPage = pageNo;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
