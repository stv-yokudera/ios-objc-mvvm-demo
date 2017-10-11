//
//  Track.m
//  ios-objc-mvvm-demo
//
//  Created by OkuderaYuki on 2017/10/12.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "Track.h"

@implementation Track

- (instancetype)initWithTrackName:(NSString *)trackName
                       artistName:(NSString *)artistName
                      releaseDate:(NSString *)releaseDateString
                     trackViewUrl:(NSString *)trackViewUrlString {
    self = [super init];
    if (self) {
        self.trackName = trackName;
        self.artistName = artistName;
        self.releaseDateString = releaseDateString;
        self.trackViewUrlString = trackViewUrlString;
    }
    return self;
}
@end
