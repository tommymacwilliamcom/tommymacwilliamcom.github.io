/**
 *  FruitImageViewController.h
 *  Section2App0
 *  Tommy MacWilliam, 2011
 *  Display an image of a single fruit.
 *
 */

#import <UIKit/UIKit.h>

@interface FruitImageViewController : UIViewController {
    UILabel *_fruitTitle;
    UIImageView *_fruitImageView;
    UIBarButtonItem *_barButton;
    NSString *_fruit;
    NSString *_imageName;
}

@property (nonatomic, retain) IBOutlet UILabel *fruitTitle;
@property (nonatomic, retain) IBOutlet UIImageView *fruitImageView;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *barButton;
@property (nonatomic, retain) NSString *fruit;
@property (nonatomic, retain) NSString *imageName;

- (IBAction)barButtonPressed;

@end
