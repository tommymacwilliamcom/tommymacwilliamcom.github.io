/**
 *  RootViewController.m
 *  Section2App3
 *  Tommy MacWilliam, 2011
 *  Display an editable list of fruit.
 *
 */

#import "RootViewController.h"
#import "AddFruitViewController.h"

@implementation RootViewController

@synthesize fruits=_fruits, addButton=_addButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Fruits";
    
    // load data from plist fle
    NSMutableDictionary *fruitData = [[NSMutableDictionary alloc] initWithContentsOfFile:
                                      [[NSBundle mainBundle] pathForResource:@"Fruits" ofType:@"plist"]];
    
    // create array from dictionary
    self.fruits = [[NSMutableArray alloc] initWithArray:[fruitData allKeys]];
    [fruitData release];
    
    // add buttons to navigation menu
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.leftBarButtonItem = self.addButton;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
 
    // save property list in case we have come back from adding a new fruit
    [self savePlist];
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
    return [self.fruits count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // set text of cell to be plist key
    cell.textLabel.text = [self.fruits objectAtIndex:indexPath.row];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // update model
        [self.fruits removeObjectAtIndex:indexPath.row];
        [self savePlist];
        
        // update view
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    // remove object and insert at new position
    NSString *tmp = [[NSString alloc] initWithString:[self.fruits objectAtIndex:fromIndexPath.row]];
    [self.fruits removeObjectAtIndex:fromIndexPath.row];
    [self.fruits insertObject:tmp atIndex:toIndexPath.row];
    [tmp release];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // create and show new alertview with a message to the user
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You selected" message:[self.fruits objectAtIndex:indexPath.row] delegate:self cancelButtonTitle:@"Thanks!" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    // release properties
    self.addButton = nil;
    self.fruits = nil;
    
    [super viewDidUnload];
}

/**
 * Switch to AddFruitViewController when add button is pressed
 *
 */
- (IBAction)addButtonPressed
{
    // allocate new controller
    AddFruitViewController *addFruitViewController = [[AddFruitViewController alloc] initWithNibName:@"AddFruitViewController" bundle:nil];
    
    // send fruit data to controller
    addFruitViewController.fruits = self.fruits;
    
    // push new controller onto the stack
    [self.navigationController pushViewController:addFruitViewController animated:YES];
    [addFruitViewController release];
}

/**
 * Save current table of fruits to the property list
 *
 */
- (void)savePlist
{
    // only dictionaries can be written to a plist
    NSMutableDictionary *d = [[NSMutableDictionary alloc] init];
    
    // create dictionary from array
    for (id fruit in self.fruits)
        [d setValue:@"" forKey:fruit];
    
    // write dictionary to plist
    [d writeToFile:[[NSBundle mainBundle] pathForResource:@"Fruits" ofType:@"plist"] atomically:YES];
    [d release];
}

- (void)dealloc
{
    // release properties
    self.addButton = nil;
    self.fruits = nil;
    
    [super dealloc];
}

@end
