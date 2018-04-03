/**
 *  Section1App2AppDelegate.h
 *  Section1App2
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section1App2AppDelegate : NSObject <UIApplicationDelegate> {
    UILabel *_label;
    UITextField *_textField;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *textField;

- (IBAction)changeText;

@end
