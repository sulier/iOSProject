//
//  JQLabelInfo.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/13.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JQLabelInfo : NSObject          //pic_list 第一层数据
@property(nonatomic,copy)NSString *uuid;
@property(nonatomic,copy)NSString *query;
@property(nonatomic,copy)NSString *refineQuery;
@property(nonatomic,assign)long itemsOnPage;
@property(nonatomic,strong)NSMutableArray *items;
@property(nonatomic,assign)int startIndex;
@property(nonatomic,assign)long totalItems;
@end
