/**
 *  Section4App9ViewController.m
 *  Section4App9
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section4App9ViewController.h"

@implementation Section4App9ViewController

@synthesize label=_label;

- (void)dealloc
{
    // release ivars
    [_label release];
    
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
}

- (void)viewDidUnload
{
    // release properties
    self.label = nil;
    
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/**
 * Fired when user presses button, open Safari with given URL 
 *
 */
- (IBAction)openSafari
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://google.com"]];
}

@end
