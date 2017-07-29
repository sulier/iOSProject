//
//  SudokuViewController.h
//  SOIOEC
//
//  Created by sulier_J on 2017/7/1.
//  Copyright © 2017年 sulier_J. All rights reserved.
//


#import <UIKit/UIKit.h>

#define kGesture @"Gesture"
typedef void( ^ VertifyBlock)(BOOL success);
typedef NS_ENUM(NSInteger, WTSudokuViewType) {
    WTSudokuViewTypeSetting = 1,
    WTSudokuViewTypeVerity
};

@interface SudokuViewController : UIViewController

@property (nonatomic, assign) WTSudokuViewType type;
@property (nonatomic, copy)VertifyBlock vertifyResults;
@end
