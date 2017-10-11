//
//  UIImage+Download.m
//  ios-objc-mvvm-demo
//
//  Created by OkuderaYuki on 2017/10/12.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "UIImage+Download.h"

@implementation UIImage (Download)
+ (void)imageWithURLString:(NSString *)urlString
         completionHandler:(ImageDownloadCompletionHandler)completionHandler {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURL *imageUrl = [NSURL URLWithString:urlString];
        NSData *imageData = [NSData dataWithContentsOfURL: imageUrl];
        UIImage *image = [UIImage imageWithData:imageData];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            completionHandler(image);
        });
    });
}
@end
