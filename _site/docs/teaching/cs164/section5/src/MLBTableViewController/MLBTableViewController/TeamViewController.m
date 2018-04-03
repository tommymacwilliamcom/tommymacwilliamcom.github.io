/**
 *  TeamViewController.m
 *  MLBTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "TeamViewController.h"

@implementation TeamViewController

@synthesize team=_team;
@synthesize teamId=_teamId;
@synthesize webView=_webView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // fit page to screen and allow user to pinch-zoom
    self.webView.scalesPageToFit = YES;
    self.webView.multipleTouchEnabled = YES;}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.navigationItem.title = self.team;
    
    // request homepage for selected team
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:
                                                            [NSString stringWithFormat:@"http://mlb.mlb.com/index.jsp?c_id=%@", self.teamId]]]];
}

@end
