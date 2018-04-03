/**
 *  TeamViewController.h
 *  MLBTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import <UIKit/UIKit.h>

@interface TeamViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSString *teamId;
@property (strong, nonatomic) NSString *team;

@end
