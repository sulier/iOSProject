//
//  ResponseObject.m
//  SOIOEC
//
//  Created by sulier_J on 2017/6/23.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import "ResponseObject.h"
#import "DataObject.h"
#import "MJExtension.h"
@interface ResponseObject()<MJKeyValue>

@end

@implementation ResponseObject
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"errNO": @"errno"};
}
+ (NSDictionary *)mj_objectClassInArray
{
    return @{@"data": [DataObject class]};
}
@end
