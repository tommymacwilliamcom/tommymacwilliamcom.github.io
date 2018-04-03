/**
 *  MasterViewController.h
 *  FruitTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import <UIKit/UIKit.h>

@class FruitWebViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) IBOutlet FruitWebViewController *fruitWebViewController;

@end
