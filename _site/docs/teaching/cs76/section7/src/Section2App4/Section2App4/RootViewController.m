/**
 *  RootViewController.m
 *  Section2App4
 *  Tommy MacWilliam, 2011
 *  Display a list of fruits with additional information.
 *
 */

#import "RootViewController.h"

@implementation RootViewController

@synthesize fruits=_fruits;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Fruits";
    
    // read fruits from plist file
    self.fruits = [[NSMutableDictionary alloc] initWithContentsOfFile:
                   [[NSBundle mainBundle] pathForResource:@"Fruits" ofType:@"plist"]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.fruits count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellIdentifier] autorelease];
    }

    // set text labels
    cell.textLabel.text = [[self.fruits allKeys] objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.fruits objectForKey:[[self.fruits allKeys] objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    // release properties
    self.fruits = nil;
    
    [super viewDidUnload];
}

- (void)dealloc
{
    // release properties
    self.fruits = nil;
    
    [super dealloc];
}

@end
