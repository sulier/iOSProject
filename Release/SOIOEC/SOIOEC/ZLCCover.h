//
//  InputCover.h
//  SOIOEC
//
//  Created by sulier_J on 2017/7/1.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^TapGesture)();
@interface ZLCCover : UIView
@property(nonatomic,copy)TapGesture gesture;
@end
