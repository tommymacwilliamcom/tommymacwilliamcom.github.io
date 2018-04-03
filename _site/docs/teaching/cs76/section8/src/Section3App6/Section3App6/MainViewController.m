/**
 *  MainViewController.m
 *  Section3App6
 *  Tommy MacWilliam, 2011
 *
 */

#import "MainViewController.h"

@implementation MainViewController

@synthesize pdfButton=_pdfButton, movieButton=_movieButton, youtubeButton=_youtubeButton, wordButton=_wordButton,
    spreadsheetButton=_spreadsheetButton;

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

/**
 * Fired when user taps "Show PDF" button
 *
 */
- (IBAction)showPdf
{
    [self showUrl:@"http://cdn.cs76.net/2011/spring/projects/html5-staff/html5-staff.pdf"];
}

/**
 * Fired when user taps "Show Movie" button
 *
 */
- (IBAction)showMovie
{
    [self showUrl:@"http://cs76.tv/2011/spring/lectures/0/lecture0.mp4"];
}

/**
 * Fired when user taps "Show YouTube" button
 *
 */
- (IBAction)showYoutube
{
    [self showUrl:@"http://www.youtube.com/watch?v=XZ5TajZYW6Y"];
}

/**
 * Fired when user taps "Show Word document" button
 *
 */
- (IBAction)showWord
{
    [self showUrl:@"http://accelerateu.org/assessments/ELA6/Penguins%20Are%20Funny%20Birds.doc"];
}

/**
 * Fired when user taps "Show Excel spreadsheet" button
 *
 */
- (IBAction)showSpreadsheet
{   
    [self showUrl:@"http://www.pitt.edu/~kiesling/dude/DudeSurveyData.xls"];
}

/**
 * Send a URL to the FlipsideViewController
 *
 */
- (void)showUrl:(NSString *)url
{
    // create new instance of FlipsideViewController nothing new here
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
    controller.delegate = self;
    controller.url = url;
    
    // show new view controller, nothing new here either
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
    
    [controller release];    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    // release properties
    self.pdfButton = nil;
    self.movieButton = nil;
    self.youtubeButton = nil;
    self.wordButton = nil;
    self.spreadsheetButton = nil;
    
    [super viewDidUnload];
}

- (void)dealloc
{
    // release ivars
    [_pdfButton release];
    [_movieButton release];
    [_youtubeButton release];
    [_wordButton release];
    [_spreadsheetButton release];
    
    [super dealloc];
}

@end
