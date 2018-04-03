/**
 *  AddFruitViewController.m
 *  Section2App3
 *  Tommy MacWilliam, 2011
 *  Add a new fruit to the list.
 *
 */

#import "AddFruitViewController.h"

@implementation AddFruitViewController

@synthesize label=_label, textField=_textField, fruits=_fruits;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    self.label = nil;
    self.textField = nil;
    
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
    self.navigationItem.title = @"Add a fruit";
}

- (void)viewDidUnload
{
    // release properties
    self.label = nil;
    self.textField = nil;
    
    [super viewDidUnload];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // add object to list of fruits
    [self.fruits addObject:textField.text];
    
    // return to previous viewcontroller
    [self.navigationController popViewControllerAnimated:YES];
    return YES;
}

@end
