//
//  AddFruitViewController.m
//  EditableTableViewController
//
//  Created by Tommy MacWilliam on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddTodoViewController.h"

@implementation AddTodoViewController

@synthesize delegate = _delegate;
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)buttonPressed:(id)sender
{
    [self.delegate didFinishWithTodo:self.textField.text];
}

@end
