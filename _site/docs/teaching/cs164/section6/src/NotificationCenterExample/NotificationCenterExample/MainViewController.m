//
//  MainViewController.m
//  NotificationCenterExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // register for FlipsideNotification
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(respond:) 
                                                 name:@"FlipsideNotification"
                                               object:nil];
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

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

- (void)respond:(NSNotification *)notification
{    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Notification received!"
                                                    message:[notification.userInfo valueForKey:@"data"]
                                                   delegate:nil
                                          cancelButtonTitle:@"Dismiss"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
