/**
 *  Section4App5ViewController.m
 *  Section4App5
 *  Tommy MacWilliam, 2011
 *
 */

#import "Section4App5ViewController.h"

@implementation Section4App5ViewController

@synthesize imageView=_imageView, picker=_picker;

- (void)dealloc
{
    // release ivars
    [_imageView release];
    [_picker release];
    
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
    
    // initialize image picker
    self.picker = [[UIImagePickerController alloc] init];
    self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    self.picker.allowsEditing = YES;
    self.picker.delegate = self;
    
    NSLog(@"%d", [@"foo" retainCount]);
}

- (void)viewDidUnload
{
    // release properties
    self.imageView = nil;
    self.picker = nil;
    
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


/**
 * Fired when button is pressed
 *
 */
- (IBAction)pressed
{
    // show image picker
    [self presentModalViewController:self.picker animated:YES];
}

/**
 * Fired when user selects image from picker
 *
 */
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info 
{  
    // display selected image in UIImageView and get rid of picker
    self.imageView.image = [info objectForKey:UIImagePickerControllerEditedImage]; 
    [self dismissModalViewControllerAnimated:YES];
}

@end
