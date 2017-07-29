//
//  ZLCErrorAlert.m
//  SOIOEC
//
//  Created by sulier_J on 2017/7/1.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import "ZLCErrorAlert.h"
#import <UIKit/UIKit.h>
@implementation ZLCErrorAlert
+(void)showAlert:(NSString *)title Message:(NSString *)msg
{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:nil otherButtonTitles:@"朕知道了",nil];
        [alert show];
    });
}


@end
