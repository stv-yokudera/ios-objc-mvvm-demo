//
//  UIImage+Download.h
//  ios-objc-mvvm-demo
//
//  Created by OkuderaYuki on 2017/10/12.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ImageDownloadCompletionHandler)(UIImage *result);

@interface UIImage (Download)

/**
 非同期で画像をダウンロードする

 @param urlString (NSString *) 画像のURLの文字列
 @param completionHandler (void (^)(UIImage *result)) ダウンロード完了時の処理
 */
+ (void)imageWithURLString:(NSString *)urlString
         completionHandler:(ImageDownloadCompletionHandler)completionHandler;
@end
