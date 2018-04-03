/**
 *  Section1App3AppDelegate.h
 *  Section1App3
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section1App3AppDelegate : NSObject <UIApplicationDelegate, UITextFieldDelegate> {
    UILabel *_label;
    UITextField *_textField;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *textField;

@end
