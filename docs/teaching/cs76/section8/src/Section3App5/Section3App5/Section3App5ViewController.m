/**
 *  Section3App5ViewController.m
 *  Section3App5
 *  Tommy MacWilliam, 2011
 * 
 *  Play a movie from the web
 *
 */

#import "Section3App5ViewController.h"
#import "MediaPlayer/MediaPlayer.h"

@implementation Section3App5ViewController

@synthesize moviePlayer=_moviePlayer;

- (void)dealloc
{
    // release ivars
    [_moviePlayer release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create URL for movie
    NSURL *url = [NSURL URLWithString:@"http://cs76.tv/2011/spring/lectures/0/lecture0.mp4"];
    
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

/**
 * Callback for playback finishing
 *
 */
- (void)playbackDidFinish
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"All done!" message:@"Hope you liked it!" delegate:nil 
                                          cancelButtonTitle:@"I did!" otherButtonTitles:@"It was awful", nil];
    [alert show];
    [alert release];
}

/**
 * Callback for playback state change
 *
 */
- (void)playbackStateDidChange
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"State Changed!" message:@"Looks like you pressed a button!" delegate:nil 
                                          cancelButtonTitle:@"I did!" otherButtonTitles:@"Liar!", nil];
    [alert show];
    [alert release];
}

- (void)viewDidUnload
{
    // release properties
    self.moviePlayer = nil;
    
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
