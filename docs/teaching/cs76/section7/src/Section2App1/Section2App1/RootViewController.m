/**
 *  RootViewController.m
 *  Section2App1
 *  Tommy MacWilliam, 2011
 *  Display a list of MLB leagues.
 *
 */

#import "RootViewController.h"
#import "DivisionsViewController.h"

@implementation RootViewController

@synthesize leagues=_leagues;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Leagues";
    
    // read information from Teams.plist    
    self.leagues = [[NSMutableDictionary alloc] initWithContentsOfFile:
                    [[NSBundle mainBundle] pathForResource:@"Teams" ofType:@"plist"]];
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.leagues count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // set text of cell to be plist key
    cell.textLabel.text = [[self.leagues allKeys] objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DivisionsViewController *divisionsViewController = [[DivisionsViewController alloc] initWithNibName:@"DivisionsViewController"
                                                                                                 bundle:nil];
    divisionsViewController.divisions = [self.leagues objectForKey:[[self.leagues allKeys] objectAtIndex:indexPath.row]];
    [self.navigationController pushViewController:divisionsViewController animated:YES];
    [divisionsViewController release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    self.leagues = nil;
    
    [super viewDidUnload];
}

- (void)dealloc
{
    self.leagues = nil;
    [super dealloc];
}

@end
