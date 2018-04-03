//
//  MainViewController.m
//  WebViewExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

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
    [self showUrl:@"http://cdn.cs164.net/2012/spring/projects/2/project2.pdf"];
}

/**
 * Fired when user taps "Show Movie" button
 *
 */
- (IBAction)showMovie
{
    [self showUrl:@"http://cdn.cs164.net/2012/spring/lectures/0/lecture0.mp4"];
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
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.url = url;
    
    // show new view controller, nothing new here either
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

@end
