//
//  FlipsideViewController.m
//  NotificationCenterExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

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

- (IBAction)buttonPressed:(id)sender
{    
    // send a new notification
    [[NSNotificationCenter defaultCenter] postNotificationName:@"FlipsideNotification"
                                                        object:self
                                                      userInfo:[NSDictionary dictionaryWithObject:@"Awesome!" forKey:@"data"]];
}

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
