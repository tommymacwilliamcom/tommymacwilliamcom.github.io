/**
 *  Section4App9ViewController.h
 *  Section4App9
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section4App9ViewController : UIViewController {
    UILabel *_label;
}

@property (nonatomic, retain) IBOutlet UILabel *label;

- (IBAction)openSafari;

@end
