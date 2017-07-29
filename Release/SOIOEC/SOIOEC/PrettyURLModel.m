//
//  PrettyURLModel.m
//  SOIOEC
//
//  Created by sulier_J on 2017/6/23.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import "PrettyURLModel.h"
#import "ValueModel.h"
#import "MJExtension.h"
@interface PrettyURLModel()<MJKeyValue>
@end
@implementation PrettyURLModel
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"errNO": @"errno"};
}
+ (NSDictionary *)mj_objectClassInArray
{
    return @{@"data": [ValueModel class]};
}



@end
