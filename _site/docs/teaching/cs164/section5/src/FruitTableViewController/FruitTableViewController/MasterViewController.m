/**
 *  MasterTableViewController.m
 *  FruitTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "FruitImageViewController.h"
#import "FruitWebViewController.h"
#import "MasterViewController.h"

@interface MasterViewController ()

// private properties
@property (strong, nonatomic) NSMutableDictionary *fruits;

@end

@implementation MasterViewController

@synthesize fruits = _fruits;
@synthesize fruitWebViewController = _fruitWebViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Fruits";
        self.fruits = [[NSMutableDictionary alloc] initWithContentsOfFile:
                   [[NSBundle mainBundle] pathForResource:@"Fruits" ofType:@"plist"]];
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
    return [self.fruits allKeys].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

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
    
    // pass the selected fruit to the new view controller
    fruitImageViewController.fruit = [[self.fruits allKeys] objectAtIndex:indexPath.row];
    fruitImageViewController.imageName = [self.fruits objectForKey:[[self.fruits allKeys] objectAtIndex:indexPath.row]];
    
    // push new view controller onto the stack
    [self.navigationController pushViewController:fruitImageViewController animated:YES];
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

@end
