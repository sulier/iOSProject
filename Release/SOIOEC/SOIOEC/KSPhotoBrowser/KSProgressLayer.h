//
//  KSProgressLayer.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/16.
//  Copyright © 2017年 sulier_J. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KSProgressLayer : CAShapeLayer

- (instancetype)initWithFrame:(CGRect)frame;
- (void)startSpin; 
- (void)stopSpin;

@end

NS_ASSUME_NONNULL_END
