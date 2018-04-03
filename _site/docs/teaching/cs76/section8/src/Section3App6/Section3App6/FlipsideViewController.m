/**
 *  FlipsideViewController.m
 *  Section3App6
 *  Tommy MacWilliam, 2011
 *
 */

#import "FlipsideViewController.h"

@implementation FlipsideViewController

@synthesize delegate=_delegate, webView=_webView, url=_url;

- (void)dealloc
{
    // release properties
    self.webView = nil;
    
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
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];
}

/**
 * Remember, viewWillLoad is NOT called every time the view will appear!
 *
 */
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // load URL specified by other controller
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
}

- (void)viewDidUnload
{
    // release properties
    self.webView = nil;
    
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
