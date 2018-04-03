/**
 *  FruitImageViewController.m
 *  FruitTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import "FruitImageViewController.h"

@implementation FruitImageViewController

@synthesize fruitTitle = _fruitTitle;
@synthesize fruitImageView = _fruitImageView;
@synthesize fruit = _fruit;
@synthesize imageName = _imageName;
@synthesize barButton = _barButton;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // add button to right of navigation bar
    self.navigationItem.rightBarButtonItem = self.barButton;
}

/**
 * Remember, viewDidLoad is not called every time the tableview is going to be shown, but viewWillAppear is
 *
 */
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // display fruit information (passed from the previous controller)
    self.navigationItem.title = self.fruit;
    self.fruitTitle.text = [NSString stringWithFormat:@"This is the %@", self.fruit];
    self.fruitImageView.image = [UIImage imageNamed:self.imageName];
}

/**
 * Display a friendly message to the user
 * Fired when user presses barButton in the navigation menu
 *
 */
- (IBAction) barButtonPressed 
{
    // create and show alert message
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello!" 
                                                    message:@"Hi there!" 
                                                   delegate:nil
                                          cancelButtonTitle:@"Go away!"
                                          otherButtonTitles:@"Hi!", nil];    
    
    [alert show];
}

@end
