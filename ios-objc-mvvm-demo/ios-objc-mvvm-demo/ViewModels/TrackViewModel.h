//
//  TrackViewModel.h
//  ios-objc-mvvm-demo
//
//  Created by OkuderaYuki on 2017/10/12.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Track.h"

typedef void (^TrackViewModelCallback)(void);

@protocol TrackViewModelChangingReceiving <NSObject>
- (void)viewModelDidChange;
@end

@interface TrackViewModel : NSObject
@property (weak, nonatomic, readonly) id <TrackViewModelChangingReceiving> receiver;
@property (nonatomic, readonly) NSString *trackName;
@property (nonatomic, readonly) NSString *artistName;
@property (nonatomic, readonly) NSString *releaseDateString;
@property (nonatomic, readonly) UIImage *trackImage;

- (instancetype)initWithTrack:(Track *)track receiver:(id<TrackViewModelChangingReceiving>)receiver;
- (void)resetTrackInfo;
@end
