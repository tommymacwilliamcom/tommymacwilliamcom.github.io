/**
 *  MasterViewController.m
 *  MLBTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "DivisionsViewController.h"
#import "MasterViewController.h"

@interface MasterViewController ()

@property (nonatomic, retain) NSMutableDictionary *leagues;

@end

@implementation MasterViewController

@synthesize leagues = _leagues;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Leagues";
        
        // read information from Teams.plist    
        self.leagues = [[NSMutableDictionary alloc] initWithContentsOfFile:
                        [[NSBundle mainBundle] pathForResource:@"Teams" ofType:@"plist"]];

    }
    return self;
}
							
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

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.leagues count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
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
}

@end
