//
//  iPhoneRelateVersion.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/29.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPhoneRelates : NSObject
@property(nonatomic,strong)NSMutableArray *enshiredDatas;
+ (instancetype)enshiredManager;

+ (NSString *)getiphoneType;
@end
