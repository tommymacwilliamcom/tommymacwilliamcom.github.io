//
//  FlipsideViewController.h
//  AnnotatedUtilityApp
//
//  Created by Tommy MacWilliam on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

// Define a new protocol that will be implemented by another controller(s)
@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

// Instance of the controller that will implement our protocol
@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
