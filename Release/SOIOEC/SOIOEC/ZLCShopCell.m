//
//  ZLCShopCell.m
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/16.
//  Copyright © 2017年 sulier_J. All rights reserved.
//


#import "ZLCShopCell.h"
#import "ZLCModel.h"
#import "UIImageView+WebCache.h"

@interface ZLCShopCell()
//@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@end


@implementation ZLCShopCell

- (void)setShop:(ZLCModel *)shop
{
    _shop = shop;
    
    self.priceLabel.text = shop.price;
    [self.iconView sd_setImageWithURL:[NSURL URLWithString:shop.smallImg] placeholderImage:[UIImage imageNamed:@"place_holder_prettyPic"]];
}

@end
