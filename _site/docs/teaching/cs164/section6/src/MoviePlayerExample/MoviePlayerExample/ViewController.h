//
//  ViewController.h
//  MoviePlayerExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MPMoviePlayerController;

@interface ViewController : UIViewController

@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;

- (void)playbackDidFinish;
- (void)playbackStateDidChange;

@end
