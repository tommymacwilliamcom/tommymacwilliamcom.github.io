//
//  MainViewController.h
//  NotificationCenterExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

- (void)respond:(NSNotification *)notification;
- (IBAction)showInfo:(id)sender;

@end
