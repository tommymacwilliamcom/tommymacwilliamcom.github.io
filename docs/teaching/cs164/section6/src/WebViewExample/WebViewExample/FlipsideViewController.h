//
//  FlipsideViewController.h
//  WebViewExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;
@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)done:(id)sender;

@end
