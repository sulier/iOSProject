//
//  ValueModel.h
//  SOIOEC
//
//  Created by sulier_J on 2017/6/23.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResponseObject.h"

@interface ValueModel : NSObject
@property(nonatomic,copy)NSString *ID;
@property(nonatomic,copy)NSString *order_num;
@property(nonatomic,copy)NSString *tag;
@property(nonatomic,copy)NSString *create_time;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)ResponseObject *contains;
@end
