/**
 *  DivisionsViewController.h
 *  Section2App1
 *  Tommy MacWilliam, 2011
 *  Display a list of MLB divisions.
 *
 */

#import <UIKit/UIKit.h>


@interface DivisionsViewController : UITableViewController {
    NSMutableDictionary *_divisions;
}

@property (nonatomic, retain) NSMutableDictionary *divisions;

@end
