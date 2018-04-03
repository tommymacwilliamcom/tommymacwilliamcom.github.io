/**
 *  RootViewController.h
 *  Section2App4
 *  Tommy MacWilliam, 2011
 *  Display a list of fruits with additional information.
 *
 */

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    NSMutableDictionary *_fruits;
}

@property (nonatomic, retain) NSMutableDictionary *fruits;

@end
