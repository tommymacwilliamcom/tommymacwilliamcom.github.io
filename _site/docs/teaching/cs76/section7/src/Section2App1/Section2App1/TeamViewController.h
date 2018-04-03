/**
 *  TeamViewController.h
 *  Section2App1
 *  Tommy MacWilliam, 2011
 *  Display the home page for a single MLB team.
 *
 */

#import <UIKit/UIKit.h>

@interface TeamViewController : UIViewController {
    UIWebView *_webView;
    NSString *_teamId;
    NSString *_team;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSString *teamId;
@property (nonatomic, retain) NSString *team;

@end
