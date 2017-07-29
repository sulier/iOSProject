//
//  JQLabelInfo.m
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/13.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import "JQLabelInfo.h"
#import "PicInfo.h"
#import "MJExtension.h"
@interface JQLabelInfo()<MJKeyValue>

@end
@implementation JQLabelInfo
+ (NSDictionary *)mj_objectClassInArray
{
    return @{@"items":[PicInfo class]};
}
@end
