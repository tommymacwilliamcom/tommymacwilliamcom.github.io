/**
 *  RootViewController.h
 *  Section4App3
 *  Tommy MacWilliam, 2011
 *
 */

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    NSMutableArray *_fruits;
}

@property (nonatomic, retain) NSMutableArray *fruits;

@end
