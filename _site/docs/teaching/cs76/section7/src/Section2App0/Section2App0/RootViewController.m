/**
 *  RootViewController.m
 *  Section2App0
 *  Tommy MacWilliam, 2011
 *  Display a list of fruit with two tapping actions.
 *
 */

#import "RootViewController.h"
#import "FruitImageViewController.h"
#import "FruitWebViewController.h"

@implementation RootViewController

@synthesize fruits=_fruits, fruitWebViewController=_fruitWebViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // set title of controller
    self.navigationItem.title = @"Fruits";
    
    // read fruits from Fruits.plist
    self.fruits = [[NSMutableDictionary alloc] initWithContentsOfFile:
                   [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Fruits.plist"]];
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

/**
 * Number of sections in the table
 *
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

/**
 * Number of rows in the table
 *
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.fruits count];
}

/**
 * Create table cells
 *
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
   
    // attempt to re-use cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // cannot re-use cell, so create new one
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // set text of cell to be plist key
    cell.textLabel.text = [[self.fruits allKeys] objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;

    return cell;
}

/**
 * User selected cell in table, show FruitImageViewController
 *
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // allocate a new viewcontroller to display the fruit
    FruitImageViewController *fruitImageViewController = [[FruitImageViewController alloc] 
                                                          initWithNibName:@"FruitImageViewController" bundle:nil];
    
    // set the fruit for the viewcontroller to be the selected fruit
    fruitImageViewController.fruit = [[self.fruits allKeys] objectAtIndex:indexPath.row];
    fruitImageViewController.imageName = [self.fruits objectForKey:[[self.fruits allKeys] objectAtIndex:indexPath.row]];
    
    // push new view controller onto the stack
    [self.navigationController pushViewController:fruitImageViewController animated:YES];
    [fruitImageViewController release];
}

/**
 * User selected detail button, show FruitWebViewController
 *
 */
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{    
    // set the fruit for the viewcontroller to be the selected fruit
    self.fruitWebViewController.fruit = [[self.fruits allKeys] objectAtIndex:indexPath.row];
    
    // push new view controller onto the stack
    [self.navigationController pushViewController:self.fruitWebViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    // release properties
    self.fruits = nil;
    self.fruitWebViewController = nil;

    [super viewDidUnload];

}

- (void)dealloc
{
    // release properties
    self.fruits = nil;
    self.fruitWebViewController = nil;
    
    [super dealloc];
}

@end
