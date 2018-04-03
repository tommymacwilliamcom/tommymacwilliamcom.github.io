/**
 *  RootViewController.h
 *  Section2App3
 *  Tommy MacWilliam, 2011
 *  Display an editable list of fruit.
 *
 */

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    UIBarButtonItem *_addButton;
    NSMutableArray *_fruits;
}

@property (nonatomic, retain) NSMutableArray *fruits;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *addButton;

- (IBAction)addButtonPressed;
- (void)savePlist;

@end
