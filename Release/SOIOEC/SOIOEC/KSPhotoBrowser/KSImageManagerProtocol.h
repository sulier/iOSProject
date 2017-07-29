//
//  KSWebImageProtocol.h
//  SOIOEC
//
//  Created by Sulier_Jim on 2017/6/16.
//  Copyright © 2017年 sulier_J. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef void (^KSImageManagerProgressBlock)(NSInteger receivedSize, NSInteger expectedSize);

typedef void (^KSImageManagerCompletionBlock)(UIImage * _Nullable image, NSURL * _Nullable url, BOOL success, NSError * _Nullable error);

@protocol KSImageManager <NSObject>

- (void)setImageForImageView:(nullable UIImageView *)imageView
                     withURL:(nullable NSURL *)imageURL
                 placeholder:(nullable UIImage *)placeholder
                    progress:(nullable KSImageManagerProgressBlock)progress
                  completion:(nullable KSImageManagerCompletionBlock)completion;

- (void)cancelImageRequestForImageView:(nullable UIImageView *)imageView;

- (UIImage *_Nullable)imageFromMemoryForURL:(nullable NSURL *)url;

@end
