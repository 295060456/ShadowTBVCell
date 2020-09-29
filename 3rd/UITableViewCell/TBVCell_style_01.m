//
//  TBVCell_style_01.m
//  gt
//
//  Created by Administrator on 11/05/2019.
//  Copyright © 2019 GT. All rights reserved.
//

#import "TBVCell_style_01.h"

@interface TBVCell_style_01()

@property(nonatomic,assign)CGFloat margin;

@end

@implementation TBVCell_style_01

-(instancetype)initWithStyle:(UITableViewCellStyle)style
             reuseIdentifier:(NSString *)reuseIdentifier
                      margin:(CGFloat)margin{
    if (self = [super initWithStyle:style
                    reuseIdentifier:reuseIdentifier]) {
        
        self.margin = margin;
    }return self;
}

- (void)setFrame:(CGRect)frame{
    frame.origin.x += self.margin;
    frame.origin.y += self.margin;
    frame.size.height -= self.margin;
    frame.size.width -= self.margin * 2;
    [super setFrame:frame];
}

- (void)setSelected:(BOOL)selected
           animated:(BOOL)animated {
    [super setSelected:selected
              animated:animated];
}
#pragma mark —— 子类需要覆写
// 下拉刷新
-(void)pullToRefresh{
    NSLog(@"下拉刷新");
}
//上拉加载更多
- (void)loadMoreRefresh{
    NSLog(@"上拉加载更多");
}
#pragma mark —— lazyLoad
-(MJRefreshGifHeader *)tableViewHeader{
    if (!_tableViewHeader) {
        _tableViewHeader =  [MJRefreshGifHeader headerWithRefreshingTarget:self
                                                          refreshingAction:@selector(pullToRefresh)];
        // 设置普通状态的动画图片
        [_tableViewHeader setImages:@[KIMG(@"catFoods")]
                           forState:MJRefreshStateIdle];
        // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
        [_tableViewHeader setImages:@[KIMG(@"kitty")]
                           forState:MJRefreshStatePulling];
        // 设置正在刷新状态的动画图片
        [_tableViewHeader setImages:@[KIMG(@"catClaw")]
                           forState:MJRefreshStateRefreshing];
        // 设置文字
        [_tableViewHeader setTitle:@"Click or drag down to refresh" forState:MJRefreshStateIdle];
        [_tableViewHeader setTitle:@"Loading more ..." forState:MJRefreshStateRefreshing];
        [_tableViewHeader setTitle:@"No more data" forState:MJRefreshStateNoMoreData];
        // 设置字体
        _tableViewHeader.stateLabel.font = [UIFont systemFontOfSize:17];
        // 设置颜色
        _tableViewHeader.stateLabel.textColor = KLightGrayColor;
    }return _tableViewHeader;
}

-(MJRefreshAutoGifFooter *)tableViewFooter{
    if (!_tableViewFooter) {
        _tableViewFooter = [MJRefreshAutoGifFooter footerWithRefreshingTarget:self
                                                                refreshingAction:@selector(loadMoreRefresh)];
        // 设置普通状态的动画图片
        [_tableViewFooter setImages:@[KIMG(@"catFoods")]
                           forState:MJRefreshStateIdle];
        // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
        [_tableViewFooter setImages:@[KIMG(@"kitty")]
                           forState:MJRefreshStatePulling];
        // 设置正在刷新状态的动画图片
        [_tableViewFooter setImages:@[KIMG(@"catClaw")]
                           forState:MJRefreshStateRefreshing];
        // 设置文字
        [_tableViewFooter setTitle:@"Click or drag up to refresh" forState:MJRefreshStateIdle];
        [_tableViewFooter setTitle:@"Loading more ..." forState:MJRefreshStateRefreshing];
        [_tableViewFooter setTitle:@"No more data" forState:MJRefreshStateNoMoreData];
        // 设置字体
        _tableViewFooter.stateLabel.font = [UIFont systemFontOfSize:17];
        // 设置颜色
        _tableViewFooter.stateLabel.textColor = KLightGrayColor;
        _tableViewFooter.hidden = YES;
    }return _tableViewFooter;
}

@end
