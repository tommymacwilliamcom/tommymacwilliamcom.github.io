/**
 *  Section4App5ViewController.h
 *  Section4App5
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section4App5ViewController : UIViewController 
    <UIImagePickerControllerDelegate, UINavigationControllerDelegate> 
{
    UIImageView *_imageView;
    UIImagePickerController *_picker;
}

@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) UIImagePickerController *picker;

- (IBAction)pressed;

@end
