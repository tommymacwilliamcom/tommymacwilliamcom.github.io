//
//  ViewController.m
//  HiddenUITextFieldExample
//
//  Created by Tommy MacWilliam on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize label = _label;
@synthesize textField = _textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // hide text field by default
    self.textField.hidden = YES;
    
    // display keyboard
    [self.textField becomeFirstResponder];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/**
 * Called whenever the user presses a key, but before the text field is actually updated
 *
 */
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    // append newly typed letter to display label
    self.label.text = [NSString stringWithFormat:@"%@%@", self.label.text, string];
    
    // allow text field to change
    return YES;
}

@end
