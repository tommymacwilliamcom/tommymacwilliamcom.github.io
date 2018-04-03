/**
 *  MasterViewController.m
 *  CellStylesExample
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "MasterViewController.h"

@interface MasterViewController ()

@property (strong, nonatomic) NSMutableDictionary *fruits;

@end

@implementation MasterViewController

@synthesize fruits = _fruits;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Cell Styles";

        // load dictionary from plist
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

- (void)insertNewObject:(id)sender
{
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.fruits.allKeys.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // main cell text is fruit name, detail text is description of fruit
    cell.textLabel.text = [self.fruits.allKeys objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.fruits objectForKey:[self.fruits.allKeys objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
