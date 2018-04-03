/**
 *  FruitWebViewController.h
 *  FruitTableViewController
 *
 *  Tommy MacWilliam <tmacwilliam@cs.harvard.edu>
 *
 */

#import <UIKit/UIKit.h>

@interface FruitWebViewController : UIViewController {
    UIWebView *_webView;
    NSString *_fruit;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSString *fruit;

@end
