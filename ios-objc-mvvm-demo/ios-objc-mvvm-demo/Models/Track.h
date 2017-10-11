//
//  Track.h
//  ios-objc-mvvm-demo
//
//  Created by OkuderaYuki on 2017/10/12.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Track : NSObject
@property (nonatomic) NSString *trackName;
@property (nonatomic) NSString *artistName;
@property (nonatomic) NSString *releaseDateString;
@property (nonatomic) NSString *trackViewUrlString;

- (instancetype)initWithTrackName:(NSString *)trackName
                       artistName:(NSString *)artistName
                      releaseDate:(NSString *)releaseDateString
                     trackViewUrl:(NSString *)trackViewUrlString;
@end
