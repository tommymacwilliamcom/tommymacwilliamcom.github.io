/**
 *  Section1App0AppDelegate.h
 *  Section1App0
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface Section1App0AppDelegate : NSObject <UIApplicationDelegate> {
    UILabel *_label;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UILabel *label;

@end
