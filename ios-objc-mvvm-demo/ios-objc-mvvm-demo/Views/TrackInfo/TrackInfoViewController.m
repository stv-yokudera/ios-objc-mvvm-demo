//
//  TrackInfoViewController.m
//  ios-objc-mvvm-demo
//
//  Created by OkuderaYuki on 2017/10/12.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

#import "TrackInfoViewController.h"
#import "TrackViewModel.h"

@interface TrackInfoViewController () <TrackViewModelChangingReceiving>
@property (weak, nonatomic) IBOutlet UIImageView *trackImageView;
@property (weak, nonatomic) IBOutlet UILabel *trackNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateLabel;
@property (nonatomic) TrackViewModel *viewModel;
@end

@implementation TrackInfoViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewModel];
}

#pragma mark - IBActions

- (IBAction)didTapReload:(UIButton *)sender {
    [self setupViewModel];
}

- (IBAction)didTapReset:(UIButton *)sender {
    [self.viewModel resetTrackInfo];
}

#pragma mark - Private Methods

- (void)setupViewModel {
    
    // デモデータ
    Track *track = [[Track alloc] initWithTrackName:@"桜"
                                         artistName:@"コブクロ"
                                        releaseDate:@"2005-05-11"
                                       trackViewUrl:@"http://is3.mzstatic.com/image/thumb/Music/v4/73/bd/7c/73bd7c40-2e85-d5a9-3549-5a8bbdabfb50/source/100x100bb.jpg"];
    
    self.viewModel = [[TrackViewModel alloc] initWithTrack:track receiver:self];
}

#pragma mark - TrackViewModelChangingReceiving

- (void)viewModelDidChange {
    self.trackImageView.image = self.viewModel.trackImage;
    self.trackNameLabel.text = self.viewModel.trackName;
    self.artistNameLabel.text = self.viewModel.artistName;
    self.releaseDateLabel.text = self.viewModel.releaseDateString;
}

@end
