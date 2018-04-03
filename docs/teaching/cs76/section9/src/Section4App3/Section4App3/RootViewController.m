/**
 *  RootViewController.m
 *  Section4App3
 *  Tommy MacWilliam, 2011
 *
 */

#import "RootViewController.h"
#import "CustomCell.h"

@implementation RootViewController

@synthesize fruits=_fruits;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Fruits";
    
    // load plist
    self.fruits = [[NSMutableArray alloc] initWithContentsOfFile:
                   [[NSBundle mainBundle] pathForResource:@"Fruits" ofType:@"plist"]];
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
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
        
        // create new instance of our custom UIView
        cell.backgroundView = [[[CustomCell alloc] init] autorelease];
    }
    
    // set cell label to fruit text
    cell.textLabel.text = [self.fruits objectAtIndex:indexPath.row];
    
    // make sure default background color doesn't cover our custom view
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)dealloc
{
    [super dealloc];
}

@end
