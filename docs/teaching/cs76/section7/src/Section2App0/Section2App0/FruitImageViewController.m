/**
 *  FruitImageViewController.m
 *  Section2App0
 *  Tommy MacWilliam, 2011
 *  Display an image of a single fruit.
 *
 */

#import "FruitImageViewController.h"

@implementation FruitImageViewController

@synthesize fruitTitle=_fruitTitle, fruitImageView=_fruitImageView, fruit=_fruit, imageName=_imageName, barButton=_barButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)dealloc
{
    // release properties
    self.fruitTitle = nil;
    self.fruitImageView = nil;
    
    [super dealloc];
}

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

- (void)viewDidUnload
{
    // release properties
    self.fruitTitle = nil;
    self.fruitImageView = nil;
    
    [super viewDidUnload];
}

/**
 * Display a friendly message to the user
 * Fired when user presses barButton in the navigation menu
 *
 */
- (IBAction) barButtonPressed 
{
    // create and show alert message
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"Hi there!" delegate:self 
                                          cancelButtonTitle:@"Go away!" otherButtonTitles:@"Hi!", nil];    
    
    [alert show];
    [alert release];
}

@end
