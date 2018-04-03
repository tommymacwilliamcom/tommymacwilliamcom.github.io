/**
 *  RootViewController.h
 *  Section2App1
 *  Tommy MacWilliam, 2011
 *  Display a list of MLB leagues.
 *
 */

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    NSMutableDictionary *_leagues;
}

@property (nonatomic, retain) NSMutableDictionary *leagues;

@end
