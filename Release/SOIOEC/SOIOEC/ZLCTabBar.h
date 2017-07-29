//
//  ZLCTabBar.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/16.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ZHTabBarAnimation)
{
    ZHTabBarAnimationStyleScale,
    ZHTabBarAnimationStyleTranslation
};

@class ZLCTabBar;

@protocol ZHTabBarDelegate <NSObject>

@optional
- (void)tabBar:(ZLCTabBar *)tabBar didSelectedItemFrom:(NSInteger)from to:(NSInteger)to;

@end

@interface ZLCTabBar : UIView

/** 子控制器的tabBarItem数组*/
@property (nonatomic, strong) NSArray *items;

@property (nonatomic, weak) id<ZHTabBarDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame style:(ZHTabBarAnimation)style;

@end
