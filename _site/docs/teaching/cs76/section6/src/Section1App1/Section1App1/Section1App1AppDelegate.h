/**
 *  Section1App1AppDelegate.h
 *  Section1App1
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section1App1AppDelegate : NSObject <UIApplicationDelegate> {
    UILabel *_label;
    UITextField *_textField;
    UIButton *_button;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UIButton *button;

- (IBAction)changeText;

@end
