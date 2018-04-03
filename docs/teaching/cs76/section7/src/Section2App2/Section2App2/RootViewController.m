/**
 *  RootViewController.m
 *  Section2App2
 *  Tommy MacWilliam, 2011
 *  Display a list of stores and restaurants.
 *
 */

#import "RootViewController.h"

@implementation RootViewController

@synthesize stores=_stores, restaurants=_restaurants, sections=_sections;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Harvard Square";
    
    // read information from plists
    NSMutableDictionary *storeData = [[NSMutableDictionary alloc] initWithContentsOfFile:
                                      [[NSBundle mainBundle] pathForResource:@"Stores" ofType:@"plist"]];
                                      
    NSMutableDictionary *restaurantData = [[NSMutableDictionary alloc] initWithContentsOfFile:
                                           [[NSBundle mainBundle] pathForResource:@"Restaurants" ofType:@"plist"]];
    
    // dictionary does not have an order, so create arrays from dictionary keys
    self.stores = [[NSMutableArray alloc] initWithArray:[storeData allKeys]];
    self.restaurants = [[NSMutableArray alloc] initWithArray:[restaurantData allKeys]];
    
    // sort array of strings in ascending order
    [self.stores sortUsingSelector:@selector(compare:)];
    [self.restaurants sortUsingSelector:@selector(compare:)];
    
    // create array to more easily access different sections
    self.sections = [[NSMutableArray alloc] initWithObjects:self.stores, self.restaurants, nil];
    
    // release unnecessary dictionaries now that we have arrays
    [storeData release];
    [restaurantData release];
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
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.sections objectAtIndex:section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0)
        return @"Stores";
    else
        return @"Restaurants";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 0)
        return @"I hope you liked the stores!";
    else
        return @"I hope you liked the restaurants!";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // get item from appropriate section and row
    cell.textLabel.text = [[self.sections objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    // release properties
    self.stores = nil;
    self.restaurants = nil;

    [super viewDidUnload];
}

- (void)dealloc
{
    // release properties
    self.stores = nil;
    self.restaurants = nil;
    
    [super dealloc];
}

@end
