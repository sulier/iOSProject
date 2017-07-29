//
//  APPObject.h
//  SOIOEC
//
//  Created by sulier_J on 2017/6/10.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
static NSString *guideNotification   = @"Cordova_Guide_Notification";
static NSString *myAPPUrl = @"itms-apps://itunes.apple.com/app/?id=1250294940";
static NSString *commentAPPUrl = @"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=1250294940";
@interface APPObject : NSObject
@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat height;
@property(nonatomic,assign)CGRect  rect;
+(APPObject *)defaultApp;
@end
