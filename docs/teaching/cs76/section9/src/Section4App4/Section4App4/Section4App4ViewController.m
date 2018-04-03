/**
 *  Section4App4ViewController.m
 *  Section4App4
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section4App4ViewController.h"
#import "CustomButton.h"

@implementation Section4App4ViewController

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
    
    // create new custom button
    CustomButton *button = [[CustomButton alloc] initWithFrame:CGRectMake(50.0f, 50.0f, 100.0f, 50.0f)
                                                         title:@"Button" color:[UIColor blueColor]];
    
    // add event handler to button
    [button addTarget:self action:@selector(pressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // add button to view
    [self.view addSubview:button];
    [button release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)pressed:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Press" message:@"You sure did!" delegate:nil 
                                          cancelButtonTitle:@"Thanks" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

@end
