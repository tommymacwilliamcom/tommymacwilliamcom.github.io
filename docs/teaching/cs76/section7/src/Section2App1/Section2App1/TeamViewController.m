/**
 *  TeamViewController.m
 *  Section2App1
 *  Tommy MacWilliam, 2011
 *  Display the home page for a single MLB team.
 *
 */

#import "TeamViewController.h"

@implementation TeamViewController

@synthesize webView=_webView, teamId=_teamId, team=_team;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

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

- (void)viewDidUnload
{    
    // release properties
    self.webView = nil;
    self.teamId = nil;
    self.team = nil;

    [super viewDidUnload];

}

@end
