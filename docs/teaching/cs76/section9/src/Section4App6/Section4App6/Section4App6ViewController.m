/**
 *  Section4App6ViewController.m
 *  Section4App6
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section4App6ViewController.h"

@implementation Section4App6ViewController

@synthesize button1=_button1, button2=_button2, button1Presses=_button1Presses, button2Presses=_button2Presses;

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
    self.button1Presses = 0;
    self.button2Presses = 0;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/**
 * Fired when either button is pressed, animate button appropriately
 *
 */
- (IBAction)buttonPressed:(id)sender
{
    // start animation block
    [UIView beginAnimations:@"button" context:nil];

    // determine which button was pressed based on tag
    if ([sender tag] == 0) {
        // keep track of how many times button was pressed (so we animate in right direction)
        self.button1Presses++;
                
        // move center of button either upwards or downwards
        if (self.button1Presses % 2)
            self.button1.center = CGPointMake(self.button1.center.x, self.button1.center.y + 300.0f);
        else
            self.button1.center = CGPointMake(self.button1.center.x, self.button1.center.y - 300.0f);
    }
    
    else if ([sender tag] == 1) {        
        // keep track of button presses again
        self.button2Presses++;
        
        // set custom animation properties
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.button2 cache:YES];
        [UIView setAnimationDuration:1.0f];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(animationDone:finished:context:)];
        
        // change opacity of button
        if (self.button2Presses % 2)
            self.button2.alpha = 0.1f;
        else
            self.button2.alpha = 1.0f;
    }
    
    // commit animation to start
    [UIView commitAnimations];
}

/**
 * Fired when animation completes, attached via setAnimationDelegate and setAnimationDidStopSelector
 *
 */
- (void)animationDone:(NSString *)animation finished:(BOOL)finished context:(void *)context
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Animation" message:@"Done!" delegate:nil 
                                          cancelButtonTitle:@"Sweet!" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

@end
