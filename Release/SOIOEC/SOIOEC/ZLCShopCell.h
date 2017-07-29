//
//  ZLCShopCell.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/16.
//  Copyright © 2017年 sulier_J. All rights reserved.
//


#import <UIKit/UIKit.h>
@class ZLCModel;
@interface ZLCShopCell : UICollectionViewCell
@property (nonatomic, strong) ZLCModel *shop;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end
