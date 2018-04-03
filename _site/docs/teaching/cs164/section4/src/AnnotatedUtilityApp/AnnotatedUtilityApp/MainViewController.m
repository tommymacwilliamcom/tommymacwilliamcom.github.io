//
//  MainViewController.m
//  AnnotatedUtilityApp
//
//  Created by Tommy MacWilliam on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

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

/**
 * Defined in FlipSideViewControllerDelegate and fired from the FlipSideViewController.
 * Signifies the FlipSideViewController has finished and can be hidden
 *
 */
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

/**
 * Fired when user taps the info button in the bottom-right corner
 *
 */
- (IBAction)showInfo:(id)sender
{    
    // create new instance of the viewcontroller for the other side
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
    // this is the delegate for the controller (where we'll define any methods specified in the protocol)
    controller.delegate = self;
    
    // define the transition for the new controller
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    // show the controller
    [self presentModalViewController:controller animated:YES];
}

@end
