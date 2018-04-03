//
//  MainViewController.h
//  WebViewExample
//
//  Created by Tommy MacWilliam on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

- (IBAction)showPdf;
- (IBAction)showMovie;
- (IBAction)showYoutube;
- (IBAction)showWord;
- (IBAction)showSpreadsheet;
- (void)showUrl:(NSString *)url;

@end
