//
//  BaseMainViewController.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/16.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import "FoundationController.h"

typedef void (^SearchTextBlock)(NSString *serchText);

@interface BaseMainViewController : FoundationController

-(void)loadSearchBarInputBlock:(SearchTextBlock)textBlock;

@end
