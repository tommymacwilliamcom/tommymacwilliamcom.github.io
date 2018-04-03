/**
 *  MasterViewController.m
 *  CustomCellsExample
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "MasterViewController.h"

@interface MasterViewController ()

@property (strong, nonatomic) NSMutableDictionary *fruits;

@end

@implementation MasterViewController

@synthesize customCell = _customCell;
@synthesize fruits = _fruits;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Custom Cells";
        
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

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.fruits.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        // load cell from nib into self.customCell
        [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        
        // current cell should use newly loaded cell
        cell = self.customCell;
        
        // clear cell so it can be loaded again
        self.customCell = nil;
    }

    // main cell text is fruit name
    UILabel *leftLabel = (UILabel *)[cell viewWithTag:10];
    leftLabel.text = [self.fruits.allKeys objectAtIndex:indexPath.row];
    
    // detail text is description of fruit
    UILabel *rightLabel = (UILabel *)[cell viewWithTag:11];
    rightLabel.text = [self.fruits objectForKey:[self.fruits.allKeys objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
