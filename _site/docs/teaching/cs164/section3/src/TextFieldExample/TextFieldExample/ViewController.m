//
//  ViewController.m
//  TextFieldExample
//
//  Created by Tommy MacWilliam on 3/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize button = _button;
@synthesize label = _label;
@synthesize textField = _textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
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
    self.label.text = self.textField.text;
    self.textField.text = @"";
}

@end
