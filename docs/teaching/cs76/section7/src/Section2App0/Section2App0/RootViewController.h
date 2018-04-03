/**
 *  RootViewController.h
 *  Section2App0
 *  Tommy MacWilliam, 2011
 *  Display a list of fruit with two tapping actions.
 *
 */

#import <UIKit/UIKit.h>

@class FruitWebViewController;

@interface RootViewController : UITableViewController {
    NSMutableDictionary *_fruits;
    FruitWebViewController *_fruitWebViewController;
}

@property (nonatomic, retain) NSMutableDictionary *fruits;
@property (nonatomic, retain) IBOutlet FruitWebViewController *fruitWebViewController;

@end
