/**
 *  Section4App7ViewController.h
 *  Section4App7
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section4App7ViewController : UIViewController {
    UIButton *_button1, *_button2;
}

@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;

- (IBAction)buttonPressed:(id)sender;

@end
