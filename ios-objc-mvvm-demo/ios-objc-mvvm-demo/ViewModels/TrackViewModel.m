//
//  TrackViewModel.m
//  ios-objc-mvvm-demo
//
//  Created by OkuderaYuki on 2017/10/12.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "TrackViewModel.h"

@interface TrackViewModel ()
@property (weak, nonatomic, readwrite) id <TrackViewModelChangingReceiving> receiver;
@property (nonatomic, readwrite) NSString *trackName;
@property (nonatomic, readwrite) NSString *artistName;
@property (nonatomic, readwrite) NSString *releaseDateString;
@property (nonatomic, readwrite) UIImage *trackImage;
@end

@implementation TrackViewModel

- (instancetype)initWithTrack:(Track *)track receiver:(id<TrackViewModelChangingReceiving>)receiver {
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.trackName = track.trackName;
        self.artistName = track.artistName;
        self.releaseDateString = track.releaseDateString;
        
        __weak __typeof(self)weakSelf = self;
        [UIImage imageWithURLString:track.trackViewUrlString completionHandler:^(UIImage *result) {
            __strong __typeof(weakSelf)strongSelf = weakSelf;
            strongSelf.trackImage = result;
            [strongSelf.receiver viewModelDidChange];
        }];
    }
    return self;
}

- (void)resetTrackInfo {
    
    NSString *noData = @"-";
    
    self.trackName = noData;
    self.artistName = noData;
    self.releaseDateString = noData;
    self.trackImage = [UIImage imageNamed:@"no_image"];
    
    [self.receiver viewModelDidChange];
}

@end
