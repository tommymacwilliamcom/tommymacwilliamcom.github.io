//
//  ViewController.m
//  TableViewExample
//
//  Created by Tommy MacWilliam on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *tfs;

@end

@implementation ViewController

@synthesize tableView = _tableView;
@synthesize tfs = _tfs;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // initialze TF array with contents
    self.tfs = [NSArray arrayWithObjects:@"David", @"Tommy", @"Rob", nil];
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
 * TableView has a single section
 *
 */
- (int)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

/**
 * Each TF has a single row
 *
 */
- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tfs.count;
}

/**
 * Cell contains text of TF's name
 *
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // identifier that allows cell to be pulled from cache
    static NSString *CellIdentifier = @"Cell";
   
    // try to get cell from cache
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // no cell in cache, so allocate a new cell
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // text of cell is TF's name
    cell.textLabel.text = [self.tfs objectAtIndex:indexPath.row];
    return cell;
}

@end
