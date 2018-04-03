/**
 *  Section3App5ViewController.h
 *  Section3App5
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>
#import "MediaPlayer/MediaPlayer.h"

@interface Section3App5ViewController : UIViewController {
    MPMoviePlayerController *_moviePlayer;
}

@property (nonatomic, retain) MPMoviePlayerController *moviePlayer;

- (void)playbackDidFinish;
- (void)playbackStateDidChange;

@end
