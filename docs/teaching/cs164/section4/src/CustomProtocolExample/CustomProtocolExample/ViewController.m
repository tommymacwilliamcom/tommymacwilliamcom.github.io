//
//  ViewController.m
//  CustomProtocolExample
//
//  Created by Tommy MacWilliam on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CA.h"
#import "TF.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create staff objects
    TF *tommy = [[TF alloc] init];
    TF *rob = [[TF alloc] init];
    CA *bob = [[CA alloc] init];
    
    // create collection of staff
    NSArray *staffers = [NSArray arrayWithObjects:tommy, rob, bob, nil];
    
    // iterate through staff and assign grades
    for (id<GraderProtocol> staff in staffers)
        NSLog(@"Grade is: %d", [staff grade]);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end