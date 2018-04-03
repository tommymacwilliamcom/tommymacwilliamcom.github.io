//
//  ViewController.m
//  NSUserDefaultsExample
//
//  Created by Tommy MacWilliam on 3/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // set default values
    NSMutableDictionary *defaultValues = [[NSMutableDictionary alloc] init];
    [defaultValues setObject:@"" forKey:@"text"];
    
    // register defaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults registerDefaults:defaultValues];
    
    // load saved text into text field
    self.textField.text = [defaults stringForKey:@"text"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)buttonPressed:(id)sender
{
    // save value
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.textField.text forKey:@"text"];
    [defaults synchronize];
    
    // hide keyboard
    [self.textField resignFirstResponder];
}

@end
