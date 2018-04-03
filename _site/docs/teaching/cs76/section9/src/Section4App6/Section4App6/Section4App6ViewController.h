/**
 *  Section4App6ViewController.h
 *  Section4App6
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section4App6ViewController : UIViewController {
    UIButton *_button1, *_button2;
    int _button1Presses, _button2Presses;
}

@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;
@property (nonatomic, assign) int button1Presses;
@property (nonatomic, assign) int button2Presses;

- (IBAction)buttonPressed:(id)sender;
- (void)animationDone:(NSString *)animation finished:(BOOL)finished context:(void *)context;

@end
