//
//  UIImage+PECrop.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/16.
//  Copyright © 2017年 sulier_J. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIImage (PECrop)

- (UIImage *)rotatedImageWithtransform:(CGAffineTransform)rotation
                         croppedToRect:(CGRect)rect;

@end
