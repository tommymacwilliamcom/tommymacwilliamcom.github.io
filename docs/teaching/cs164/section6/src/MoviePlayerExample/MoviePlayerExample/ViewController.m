//
//  ViewController.m
//  MoviePlayerExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MediaPlayer/MediaPlayer.h"
#import "ViewController.h"

@implementation ViewController

@synthesize moviePlayer = _moviePlayer;

- (void)viewDidLoad
{
    [super viewDidLoad];

    // create URL for movie
    NSURL *url = [NSURL URLWithString:@"http://cdn.cs164.net/2012/spring/lectures/0/lecture0.mp4"];
    
    // create new movie player with set dimensions
    self.moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    self.moviePlayer.view.frame = CGRectMake(0, 0, 300, 300);
    
    // register notification
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playbackDidFinish) 
                                                 name:MPMoviePlayerPlaybackDidFinishNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playbackStateDidChange) 
                                                 name:MPMoviePlayerPlaybackStateDidChangeNotification object:nil];
    
    // add movie player to view and play movie
    [self.view addSubview:self.moviePlayer.view];
    [self.moviePlayer play];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/**
 * Callback for playback finishing
 *
 */
- (void)playbackDidFinish
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"All done!"
                                                    message:@"Hope you liked it!"
                                                   delegate:nil 
                                          cancelButtonTitle:@"I did!"
                                          otherButtonTitles:@"It was awful", nil];
    [alert show];
}

/**
 * Callback for playback state change
 *
 */
- (void)playbackStateDidChange
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"State Changed!"
                                                    message:@"Looks like you pressed a button!" 
                                                   delegate:nil 
                                          cancelButtonTitle:@"I did!" 
                                          otherButtonTitles:@"Liar!", nil];
    [alert show];
}

@end
