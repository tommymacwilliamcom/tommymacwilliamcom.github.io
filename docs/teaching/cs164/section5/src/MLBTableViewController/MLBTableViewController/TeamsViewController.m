/**
 *  TeamsViewController.m
 *  MLBTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "TeamsViewController.h"
#import "TeamViewController.h"

@implementation TeamsViewController

@synthesize teams = _teams;

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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
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
}

@end
