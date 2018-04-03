//
//  FlipsideViewController.m
//  AnnotatedUtilityApp
//
//  Created by Tommy MacWilliam on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

@synthesize delegate = _delegate;

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

#pragma mark - Actions

/**
 * Fired when user presses done button in top-left of menu bar
 *
 */
- (IBAction)done:(id)sender
{
    // tell the delegate to fire the flipsideViewControllerDidFinish method, where we hide this controller
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
