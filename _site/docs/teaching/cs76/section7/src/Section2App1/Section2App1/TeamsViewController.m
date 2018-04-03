/**
 *  TeamsViewController.m
 *  Section2App1
 *  Tommy MacWilliam, 2011
 *  Display a list of MLB teams.
 *
 */

#import "TeamsViewController.h"
#import "TeamViewController.h"

@implementation TeamsViewController

@synthesize teams=_teams;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

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
    self.navigationItem.title = @"Teams";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.teams count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // set text of cell to be plist key
    cell.textLabel.text = [[self.teams allKeys] objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // create new viewcontroller
    TeamViewController *teamViewController = [[TeamViewController alloc] initWithNibName:@"TeamViewController"
                                                                                  bundle:nil];
    
    // pass data about selected team to viewcontroller
    teamViewController.teamId = [self.teams objectForKey:[[self.teams allKeys] objectAtIndex:indexPath.row]];
    teamViewController.team = [[self.teams allKeys] objectAtIndex:indexPath.row];
    
    // show new viewcontroller to user
    [self.navigationController pushViewController:teamViewController animated:YES];
    [teamViewController release];
}

@end
