/**
 *  FruitWebViewController.h
 *  Section2App0
 *  Tommy MacWilliam, 2011
 *  Display a fruit's Wikipedia page.
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
